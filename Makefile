BC_LINE_LENGTH=0
all: table_A.txt table_B.txt table_C.txt table_D.txt table_E.txt table_F.txt table_G.txt table_H.txt table_I.txt table_J.txt table_K.txt table_L.txt table_M.txt

table_A.txt:table_A_termio.bc lawden.bc
	BC_LINE_LENGTH=0 time bc -l lawden.bc table_A_termio.bc | tee table_A.txt
table_B.txt:table_B_termio.bc lawden.bc
	BC_LINE_LENGTH=0 time bc -l lawden.bc table_B_termio.bc | tee table_B.txt
table_C.txt:table_C_termio.bc lawden.bc
	BC_LINE_LENGTH=0 time bc -l lawden.bc table_C_termio.bc | tee table_C.txt
table_D.txt:table_D_termio.bc elliptic.bc
	BC_LINE_LENGTH=0 time bc -l elliptic.bc table_D_termio.bc | tee table_D.txt
table_E.txt:table_E_termio.bc lawden.bc
	BC_LINE_LENGTH=0 time bc -l lawden.bc table_E_termio.bc | tee table_E.txt
table_F.txt:table_F_termio.bc lawden.bc
	BC_LINE_LENGTH=0 time bc -l lawden.bc table_F_termio.bc | tee table_F.txt
table_G.txt:table_G_termio.bc lawden.bc
	BC_LINE_LENGTH=0 time bc -l lawden.bc table_G_termio.bc | tee table_G.txt
table_H.txt:table_H_termio.bc lawden.bc
	BC_LINE_LENGTH=0 time bc -l lawden.bc table_H_termio.bc | tee table_H.txt
table_I.txt:table_I_termio.bc lawden.bc
	BC_LINE_LENGTH=0 time bc -l lawden.bc table_I_termio.bc | tee table_I.txt
table_J.txt:table_J_termio.bc lawden.bc
	BC_LINE_LENGTH=0 time bc -l lawden.bc table_J_termio.bc | tee table_J.txt
table_K.txt:table_K_termio.bc lawden.bc
	BC_LINE_LENGTH=0 time bc -l lawden.bc table_K_termio.bc | tee table_K.txt
table_L.txt:table_L_termio.bc lawden.bc
	BC_LINE_LENGTH=0 time bc -l lawden.bc table_L_termio.bc | tee table_L.txt
table_M.txt:table_M_termio.bc lawden.bc
	BC_LINE_LENGTH=0 time bc -l lawden.bc table_M_termio.bc | tee table_M.txt
