### Aim
* Recreating code for reproducing Mathematical Tables at the back of Lawden's elliptical function book in 1989.
### Status
* Currently, code could be used to reproduce nearly all the tables (including Table L which does not have explicit code for reproduction).
* BC is used to gain arbitrary precision capability on nearly all platforms, as BC is available nearly on all Unix.
* Not meant to be fast. Those need performance should check <code>fredrik-johansson/mpmath</code>.
* Accuracy and speed of the functions inside the code varies, but given a good enough (high enough) scale value and time, it could reproduce the numbers.
### To-Do
* Split the single file into a batch of files.
* More rigorous check against cancellation error or precision loss due to divisions.
* Coding style and comments
### History
* Before git repository created in the morning of 29May2022, this piece of work starts from the theta functions which are defined in Chapter 1 on 12Oct2021.
* Originally for implementing some of the mathematics needed by other works which required me to study elliptic function + integral from scratch.
* Later agree (with myself) to reproduce all Mathematical Tables at the end of the book first, making sure I could get the numbers whenever I need.
* Sometimes numbers are checked against Mathematica on a Raspberry Pi (always thanks Wolfram for making that available).
### License
Copyright retained until further notice (or change of this line.
### Files

| File | Uses |
| ---- | ---- |
|<code>README.md</code> |This markdown README file. |
|<code>lawden.bc</code> |The single file which contains all stuff for computations. Table-making codes are split into other files. |
|<code>table_A_termio.bc</code> |Computes Table A. Default takes ~1.379 sec.|
|<code>table_B_termio.bc</code> |Computes Table B. Default takes ~10.501 sec. |
|<code>table_C_termio.bc</code> |Computes Table C. Default takes ~13.771 sec. |
|<code>table_D_termio.bc</code> |Computes Table D. Default takes ~609.308 sec. Simply too slow. |
|<code>table_E_termio.bc</code> |Computes Table E. Default takes ~12.076 sec. |
|<code>table_F_termio.bc</code> |Computes Table F. Default takes ~1.557 sec. |
|<code>table_G_termio.bc</code> |Computes Table G. Default takes ~2.142 sec. |
|<code>table_H_termio.bc</code> |Computes Table H. Default takes ~1.302 sec. (Need debug as there are two functions doing the same thing and both are not fully correct over all inputs.) |
|<code>table_I_termio.bc</code> |Computes Table I. Default takes ~45.130 sec.|
|<code>table_J_termio.bc</code> |Computes Table J. Default takes ~1.568 sec. |
|<code>table_K_termio.bc</code> |Computes Table K. Default takes ~3.892 sec. |
|<code>table_M_termio.bc</code> |Computes Table M. Default takes ~38.969 sec. |

### Functions inside Lawden.bc
For obvious reason, the mathematical notation used in the description will stick to notations used in Lawden's book. Ordered by the order of appearance in the code.

| Name and Arguments | Description |
| ------------------ | ----------- |
|<code>abs(x)</code> |Returns absolute value of $x$. |
|<code>rad(x)</code> |Returns $x$ degree in unit of radian. |
|<code>sqr(x)</code> |Returns $x^2$. Only occasionally used. |
|<code>theta1(z,q)</code> |Returns $\theta_1(z,q)$ where $z$ in radian and $q$ is the real-valued nome. |
|<code>theta3(z,q)</code> |Returns $\theta_3(z,q)$ where $z$ in radian and $q$ is the real-valued nome. |
|<code>theta2(z,q)</code> |A lazy implementation of $\theta_2(z,q)$ based on $\theta_1(z,q)$. |
|<code>theta4(z,q)</code> |A lazy implementation of $\theta_4(z,q)$ based on $\theta_3(z,q)$. |
|<code>theta1deg(x,q)</code> |A wrapped function for Table A. |
|<code>theta2deg(x,q)</code> |A wrapped function for Table A. |
|<code>theta3deg(x,q)</code> |A wrapped function for Table A. |
|<code>theta4deg(x,q)</code> |A wrapped function for Table A. |
|<code>theta1_dz(z,q)</code> |Returns $\theta_1'(z,q)$. |
|<code>theta1_dz2(z,q)</code> |Returns $\theta_1''(z,q)$. |
|<code>theta2_dz(z,q)</code> |A lazy implementation of $\theta_2'(z,q)$. Probably not the principal branch. |
|<code>theta2_dz2(z,q)</code> |A lazy implementation of $\theta_2''(z,q)$. Probably not the principal branch. |
|<code>theta1_dz3(z,q)</code> |Returns $\theta_1^{(3)}(z,q)$. |
|<code>theta3_dz(z,q)</code> |Returns $\theta_3'(z,q)$. |
|<code>theta4_dz(z,q)</code> |A lazy implementation of $\theta_4'(z,q)$. Probably not the principal branch. |
|<code>theta3_dz2(z,q)</code> |Returns $\theta_3''(z,q)$. |
|<code>theta4_dz2(z,q)</code> |A lazy implementation of $\theta_4''(z,q)$. Probably not the principal branch. |
|<code>k2q(k)</code> |Returns nome $q$ given modulus $k$. Implemented via bisection method, world be slow. |
|<code>sn(u,k)</code> |Returns Jacobi's elliptic function $\operatorname{sn} u$. Appears in Table C. |
|<code>cn(u,k)</code> |Returns Jacobi's elliptic function $\operatorname{cn} u$. Appears in Table C. |
|<code>dn(u,k)</code> |Returns Jacobi's elliptic function $\operatorname{dn} u$. Appears in Table C. |
|<code>smallk2bigk(k)</code> |Given modulus $k$, returns complete elliptic integral of the 1st kind $K$. For Table B. |
|<code>smallk2bige(k)</code> |Given modulus $k$, returns complete elliptic integral of the 2nd kind $E$. For Table B. |
|<code>jacobi_epsilon(u,k)</code> |Jacobi's Epsilon Function $E(u,k)$. For Table E. |
|<code>jacobi_zeta(u,k)</code> |Jacobi's Zeta Function $Z(u,k)$. For Table E. |
|<code>tabled1_1stkind_deg(phi,k)</code>| Legendre's incomplete elliptic integral of the 1st kind $F(\Phi,k)$, for Table D. Implemented via bisection method as suggested. Would be slow. |
|<code>tabled2_integral_e(u,k)</code>| Legendre's incomplete elliptic integral of the 2nd kind $D(\Phi,k)$, for Table D. Implemented via calling <code>tabled1_1stkind_deg(phi,k)</code>. Lawden used $D$ instead of the more commonly used $E$ in an attempt to avoid confusion. |
|<code>tablef1_function(uow1,kappa)</code> |Returns $\omega_1^{-1}\sigma(u,\omega_1,i\kappa\omega_1)$ for Table F. |
|<code>sigma1_function(uow1,kappa)</code> |Returns $\sigma_1(u,\omega_1,i\kappa\omega_1)$ for Table F. |
|<code>sigma2_function(uow1,kappa)</code> |Returns $\sigma_2(u,\omega_1,i\kappa\omega_1)$ for Table F. |
|<code>sigma3_function(uow1,kappa)</code> |Returns $\sigma_3(u,\omega_1,i\kappa\omega_1)$ for Table F. |
|<code>tablef1_function_duow1(uow1,kappa)</code> |Returns the derivative of <code>tablef1_function(uow1,kappa)</code>, for Table G. |
|<code>tableg_function(uow1,kappa)</code> |Returns $\omega_1\zeta(u,\omega_1,i\kappa\omega_1)$ for Table G. |
|<code>tableh1_p(uow1,kappa)</code> |Returns $\omega_1^2\wp(u,\omega_1,i\kappa\omega_1)$ for Table H. **Problem: Two functions!?** |
|<code>tablef1_function_duow2(uow1,kappa)</code> |Returns the derivative of <code>tablef1_function_duow1(uow1,kappa)</code>, for <code>tableg_function_duow1(uow1,kappa)</code> below. |
|<code>tableg_function_duow1(uow1,kappa)</code> |Returns the derivative of <code>tableg_function(uow1,kappa)</code>, for <code>tableh_p(uow1,kappa)</code> below. |
|<code>tableh_p(uow1,kappa)</code> |Returns $\omega_1^2\wp(u,\omega_1,i\kappa\omega_1)$ for Table H. **Problem: Two functions!?** |
|<code>tablek1_e1w1square(kappa)</code> |Returns $\omega_1^2 e_1$ for upper half of Table K. |
|<code>tablek1_e2w1square(kappa)</code> |Returns $\omega_1^2 e_2$ for upper half of Table K. |
|<code>tablek1_e3w1square(kappa)</code> |Returns $\omega_1^2 e_3$ for upper half of Table K. |
|<code>tablek1_g2w1fourth(kappa)</code> |Returns $\omega_1^4 g_2$ for upper half of Table K. |
|<code>tablek1_g3w1sixth(kappa)</code> |Returns $\omega_1^6 g_3$ for upper half of Table K. |
|<code>tablei_p(uow1,kappa)</code> |Returns $\omega_1^2\wp(u+\omega_3,\omega_1,i\kappa\omega_1)$ for Table I. |
|<code>psi(z,nu)</code> |A sum $\psi(z)$ defined in Lawden Chapter 6 Exercise 22. Important for computing $\wp(u,\omega_1,\frac12\omega_1(1+i\nu))$ without using complex numbers in BC for Table J-M. |
|<code>psi_dz(z,nu)</code> |Returns $\psi'(z)$. |
|<code>psi_dz2(z,nu)</code> |Returns $\psi''(z)$. |
|<code>psi_dz3(z,nu)</code> |Returns $\psi^{(3)}(z)$. |
|<code>tablej_p(uow1,nu)</code> |Returns $\omega_1^2\wp(u,\omega_1,\frac12\omega_1(1+i\nu))$ needed for Table J. |
|<code>tablej_p_duow1(uow1,nu)</code> |Returns the derivative of <code>tablej_p(uow1,nu)</code>. |
|<code>tablek1_bigg(kappa)</code> |Returns $G$ for upper half of the Table K. |
|<code>tablek2_e1w1square(nu)</code> |Returns $\omega_1^2 e_1$ for lower half of Table K. |
|<code>tablek2_e2imagpart(nu)</code> |Returns $\Im(\omega_1^2 e_2)$ for lower half of Table K. |
|<code>void tablek2_print_e2w1square(nu)</code> |Pretty-print of the complex conjugate pair on terminal for lower half of Table K. |
|<code>tablek2_g2w1fourth(nu)</code> |Returns $\omega_1^4 g_2$ for lower half of Table K. |
|<code>tablek2_g3w1sixth(nu)</code> |Returns $\omega_1^6 g_3$ for lower half of Table K. |
|<code>tablek2_bigg(nu)</code> |Returns $G$ for lower half of the Table K. |
|<code>bigg2nu_g3gt0(g)</code> |Solves $\nu$ given $G$ for upper-left of Table M. Implemented via bisection method, would be slow. |
|<code>bigg2nu_g3lt0(g)</code> |Solves $\nu$ given $G$ for upper-right of Table M. Implemented via bisection method, would be slow. |
|<code>bigg2kappa_g3gt0(g)</code> |Solves $\kappa$ given $G$ for lower-left of Table M. Implemented via bisection method, would be slow. |
|<code>bigg2kappa_g3lt0(g)</code> |Solves $\kappa$ given $G$ for lower-right of Table M. Implemented via bisection method, would be slow. |

