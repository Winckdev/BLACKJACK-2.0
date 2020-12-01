library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity blocoOperativo is
	generic(
		dataWidth: positive := 8;
		addressWidth: positive := 8
	);
	port(
		-- control inputs
		clk		: in std_logic;
		reset_req: in std_logic;
		-- data inputs
		address	: IN STD_LOGIC_VECTOR (addressWidth-1 DOWNTO 0);
		writedata: IN STD_LOGIC_VECTOR (dataWidth-1 DOWNTO 0);
		addCarta: in std_logic;
		-- data outputs
		readdata	: OUT STD_LOGIC_VECTOR (dataWidth-1 DOWNTO 0);
		-- commands from OperativeBlock
		cmdSetI, cmdResetI, cmdSetPontos,cmdResetPontos, cmdMultAddress,
			cmdSetCarta, cmdResetCarta, cmdSetBaralhoI, cmdMultBaralho: in std_logic;
		
			
		--status to OperativeBlock
		sttPontosMaiorDezesseis, sttPontosMaiorVinte, sttCompBaralho, sttIMenor13, sttAddCarta: out std_logic
		--testRAM_out, testCarta_out, testI_out: out std_logic_vector(dataWidth-1 downto 0)
	);
end entity;

architecture datapath of blocoOperativo is
	
	component Multi21 is
		generic (tam: NATURAL);
		port (
			a: in std_logic_vector(tam-1 downto 0);
			b: in std_logic_vector(tam-1 downto 0);
			op: in std_logic;
			saida: out std_logic_vector(tam-1 downto 0)
		);
	end component;
	
	component incrementador is
		generic(
			width: positive := 8;
			isSigned: boolean := false
		);
		port(
			inp: in std_logic_vector(width-1 downto 0);
			outp: out std_logic_vector(width-1 downto 0)
		);
	end component;
	
	component decrementador is
		generic(
			dataWidth: positive := 8;
			isSigned: boolean := false
		);
		port(
			inp: in std_logic_vector(dataWidth-1 downto 0);
			outp: out std_logic_vector(dataWidth-1 downto 0)
		);
	end component;
	
	component CompMaior is
		generic (tam: NATURAL);
		port (
			a: in std_logic_vector(tam-1 downto 0);
			b: in std_logic_vector(tam-1 downto 0);
			saida: out std_logic
		);
	end component;
	
	component CompIgual is
		generic (tam: NATURAL);
		port (
			a: in std_logic_vector(tam-1 downto 0);
			b: in std_logic_vector(tam-1 downto 0);
			saida: out std_logic
		);
	end component;
	
	component registrador is
		generic(
			width: positive := 8
		);
		port(
			-- control inputs
			clk, reset, load: in std_logic;
			-- data inputs
			datain: in std_logic_vector(width-1 downto 0);
			-- data outputs
			dataout: out std_logic_vector(width-1 downto 0)
		);
	end component;
	
	component Soma2 is
		generic (dataWidth: positive := 8);
		Port ( NUM1 : in  STD_LOGIC_VECTOR (dataWidth-1 downto 0);
				  NUM2 : in  STD_LOGIC_VECTOR (dataWidth-1 downto 0);
				  SUM : out  STD_LOGIC_VECTOR (dataWidth-1 downto 0));
	end component;

	component memoriaRAM is
		generic (dataWidth: positive := 8);
		PORT(
			address	: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			wren		: IN STD_LOGIC ;
			q			: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
	end component;

	signal  incI_out, regPos_out, regI_in, regI_out, decTam_out, multRAMI_out, multAddress_out, decCarta_out,
				regCarta_out, regPontos_out, regPontos_in, regPos_in, RAM_out, incIRAM_out: std_logic_vector(dataWidth-1 downto 0);


begin
	--testRAM_out <= std_logic_vector(unsigned(RAM_out));
	--testRAM_out <= to_unsigned(RAM_out, 8);
	
	--testCarta_out <= std_logic_vector(unsigned(regCarta_out));
	--testCarta_out <= to_unsigned(regCarta_out, 8);
	
	--testI_out <= std_logic_vector(unsigned(regI_out));
	--testI_out <= to_unsigned(regI_out, 8);
	
	
	readdata <= regPontos_out;

	--Logica combinacional do I ====================================

	--Incrementador de I		
	--i = i ++; 					    	 ==> cmdSetI, cmdResetI

	IncI: incrementador
		generic map (dataWidth, false)
		port map ( inp => regI_out, outp => regI_in);

	--Registrador do I
	--i = 0  	==> cmdSetI, cmdResetI

	RegI: registrador
		generic map (dataWidth)
		port map (clk => clk, reset => cmdResetI, load => cmdSetI, datain =>  regI_in, dataout =>regI_out );
		
		
	CompIMenor13: CompMaior
		generic map (dataWidth)
		port map (a => "00001101", b => regI_out, saida => sttIMenor13);

	--Logica do Datapath do Carta ====================================
	
	--Registrador de Cartas
	--carta = input()			==> cmdSetCarta

	RegCarta: registrador 
		generic map (dataWidth)
		port map (clk => clk, reset => cmdResetCarta, load => cmdSetCarta, datain => writedata, dataout => regCarta_out );
		
	DecCarta: decrementador
		generic map (dataWidth, true)
		port map ( inp => regCarta_out, outp => decCarta_out);

	--Logica do Datapath do Pontos ====================================

	--Somador dos pontos
	--pontos = pontos + carta		==> cmdSomaPontos

	SumPontos: Soma2
		generic map (dataWidth)
		port map (NUM1 => regPontos_out, NUM2 => regCarta_out, SUM => regPontos_in);

	--Registrador dos pontos 
	--pontos = pontos + carta 		==> cmdSetPontos

	RegPontos: registrador 
		generic map (dataWidth)
		port map (clk => clk, reset => cmdResetPontos, load => cmdSetPontos, datain =>  regPontos_in, dataout => regPontos_out );

	--Multiplexador dos pontos
	--
	
	CompPontos16: CompMaior
		generic map (dataWidth)
		port map (a => regPontos_out, b => "00010000", saida => sttPontosMaiorDezesseis);
		
	CompPontos21: CompMaior
		generic map (dataWidth)
		port map (a => regPontos_out, b => "00010101", saida => sttPontosMaiorVinte);


	-- Logica do Datapath do Baralho ====================================

	--Incrementador de i para RAM
	-- baralho[i] = i + 1
	IncIRAM: incrementador
		generic map (dataWidth, true)
		port map ( inp => regI_out, outp => incIRAM_out);

	--Multiplexador para os dados da RAM
	-- baralho[i] = i + 1 ou baralho[í] = 0
	MultRAM: Multi21
		generic map (dataWidth)
		port map (a => incIRAM_out, b => "00000000",  op => cmdMultBaralho, saida => multRAMI_out);

	--Multiplexador para o endereço da RAM
	--baralho[i] ou baralho[carta-1]
	MultAddress: Multi21
		generic map (dataWidth)
		port map (a => regI_out, b => decCarta_out,  op => cmdMultAddress, saida => multAddress_out);
	
	--Memoria RAM para armazenar valores
	RAM: MemoriaRAM
		generic map (dataWidth)
		port map(address => multAddress_out,  clock => clk, data=> multRAMI_out , wren=>cmdSetBaralhoI, q=> RAM_out);
	
	--Comparador de igual
	-- if baralho[carta-1] == 0:
	CompBaralho: CompIgual
		generic map (dataWidth)
		port map (a => RAM_out, b => "00000000", saida => sttCompBaralho);
		

end architecture;