transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Arthur/Desktop/BLACKJACK/Incrementador.vhd}
vcom -93 -work work {C:/Users/Arthur/Desktop/BLACKJACK/Decrementador.vhd}
vcom -93 -work work {C:/Users/Arthur/Desktop/BLACKJACK/Multi21.vhd}
vcom -93 -work work {C:/Users/Arthur/Desktop/BLACKJACK/Soma2.vhd}
vcom -93 -work work {C:/Users/Arthur/Desktop/BLACKJACK/CompMaior.vhd}
vcom -93 -work work {C:/Users/Arthur/Desktop/BLACKJACK/CompIgual.vhd}
vcom -93 -work work {C:/Users/Arthur/Desktop/BLACKJACK/blocoOperativo.vhd}
vcom -93 -work work {C:/Users/Arthur/Desktop/BLACKJACK/registrador.vhd}
vcom -93 -work work {C:/Users/Arthur/Desktop/BLACKJACK/MemoriaRAM.vhd}
vcom -93 -work work {C:/Users/Arthur/Desktop/BLACKJACK/pkg_Estado.vhd}
vcom -93 -work work {C:/Users/Arthur/Desktop/BLACKJACK/Blackjack.vhd}
vcom -93 -work work {C:/Users/Arthur/Desktop/BLACKJACK/blocoControle.vhd}

