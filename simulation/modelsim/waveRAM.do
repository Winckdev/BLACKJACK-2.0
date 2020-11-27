onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /memoriaram/address
add wave -noupdate /memoriaram/clock
add wave -noupdate /memoriaram/data
add wave -noupdate /memoriaram/wren
add wave -noupdate /memoriaram/q
add wave -noupdate /memoriaram/sub_wire0
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {15814 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {98304 ps}
