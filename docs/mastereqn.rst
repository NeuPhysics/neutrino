Neutrino Oscillation And Master Equation
==================================

.. admonition:: Question
   :class: warning

   Why do we think about master equation?

.. admonition:: Answer
   :class: note

   The terms we care the most are the populations of the states. One of the treatment of quantum master equation is to write down the closed equations for population terms only. A very beautiful example is the projection method invented by Zwawzig and Nakajiwa.



Quantum Master Equation
---------------------------------


.. admonition:: Projection Technique
   :class: note

   First of all define a diagonalizing operator :math:`\hat D` which just keeps the diagonal elements and simply drops the off diagonal elements. We see that :math:`1-\hat D` will element all diagonal elements.

   We can define the diagonalized density matrix as :math:`\hat \rho_d = \hat D \hat \rho` and off-diagonalized density matrix as :math:`\hat \rho_{od} = (1-\hat D)\hat \rho`. As an application,

   .. math::
      \hat \rho = \hat \rho_d + \hat \rho_{od} .

   Starting from the von Neumann equation,

   .. math::
      i\hbar \partial_t \hat \rho = \left[\hat H, \hat \rho \right] .

   By using the Liouville operator,

   .. math::
      \partial_t \hat \rho = -i \hat L \hat \rho .

   Apply :math:`\hat D` and :math:`1-\hat D` to the von Neumann equation,

   .. math::
      \partial_t \hat \rho_d & = -i \hat D  \hat L \hat \rho \\
      \partial_t \hat \rho _{od} & = -i (1 - \hat D)  \hat L \hat \rho .

   Use the relation that :math:`\hat \rho = \hat \rho_d + \hat \rho_{od}`, we have

   .. math::
      \partial_t \hat \rho_d & = -i \hat D  \hat L \hat \rho_d - i \hat D  \hat L \hat \rho _ {od} \\
      \partial_t \hat \rho _{od} & = - i (1 - \hat D)  \hat L \hat \rho _ d - i (1 - \hat D)  \hat L \hat \rho_{od}  .

   Solve the second equation using Green function technique,

   .. math::
      \hat \rho_{od} = e^{-i(1-\hat D)\hat L t} + \int_0^t dt' e^{-i(1-\hat D) \hat L (t-t')}(-i(1-\hat D)\hat L \hat \rho_d(t')) .

   .. hint::
      Recall that the solution for

      .. math::
         \dot y + \alpha y = f

      is

      .. math::
         y = e^{-\alpha t} y(0) + \int_0^t dt' e^{-\alpha (t-t')} f(t') .


   Insert this solution to the equation of :math:`\hat \rho_d`,

   .. math::
      {\color{red}\partial_t \hat \rho_d = - i\hat D\hat L \hat \rho_d -  \hat D\hat L \int_0^t dt' e^{-i(1-\hat D) \hat L (t-t')}(1-\hat D)\hat L \hat \rho_d(t')} {\color{blue} - i \hat D \hat L e^{-i(1-\hat D)\hat L t} \rho_{od}(0) }.

   What happened to the blue term? It disapears when we apply the initial random phase condition.

   When it happens we get our closed master equation for :math:`\hat \rho_d`, which is an equation for the probability.



In our case of neutrinos, random phase condition is not really needed since we usually deal with the situation that electron neutrinos are appearant only.

In details, we have such a density matrix,

.. math::
   \mathbf\rho = \begin{pmatrix}\rho_{aa} &\rho_{ab} \\ \rho_{ba} & \rho_{bb}\end{pmatrix} .

The quantum master equation we would like to use is

.. math::
   \partial_t \hat \rho_d = - i\hat D\hat L \hat \rho_d -  \hat D\hat L \int_0^t dt' e^{-i(1-\hat D) \hat L (t-t')}(1-\hat D)\hat L \hat \rho_d(t') .


Vacuum Oscillation Master Equation
------------------------------------------------


Using this projection method, one can find out the master equation for vacuum oscillations.


.. admonition:: Pauli Matrices
   :class: note

   We will use Pauli matrices in the following part. Here is a review of them.

   1. Pauli Matrices,

       .. math::
          \sigma_1 &= \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix} \\
          \sigma_2 & = \begin{pmatrix} 0 & -i \\ i & 0 \end{pmatrix} \\
          \sigma_3 & = \begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix}.

    2. Commutation Relations,

        .. math::
           [\sigma_1,\sigma_2] &= 2i \sigma_3 \\
           [\sigma_2,\sigma_3] &= 2i \sigma_1 \\
           [\sigma_3,\sigma_1] &= 2i \sigma_2.

        The general form is

        .. math::
           [\sigma_i,\sigma_j] &= 2i \epsilon_{ijk} \sigma_k.


All the Pauli matrices plus identity form a complate basis for 2 by 2 matrices. Vacuum oscillation Hamiltonian is

.. math::
   \mathbf H &\to \frac{\delta^2m}{4E} \begin{pmatrix} -\cos 2\theta & \sin 2 \theta \\ \sin 2\theta & \cos 2\theta \end{pmatrix} \\
   & \equiv \begin{pmatrix} -c & s \\ s & c \end{pmatrix}\\
   & = -c \begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix} + s\begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix} \\
   & = -c \mathbf{\sigma_3} + s \mathbf{ \sigma_1},

where :math:`c\equiv \frac{\delta^2 m}{4E}\cos 2 \theta` and similarly for s.

.. admonition:: Liouville Operator
   :class: note

   Liouville operator in quantum mechanics is

   .. math::
      \hat L  =  [H, *],

   where the asterisk is the slot for an operator.

   In the case of vacuum oscillation, we can calculate the following results,

   .. math::
      \hat L \sigma_1 &= [H, \sigma_1] = -2ic\sigma_2 \\
      \hat L \sigma_2 &= [H, \sigma_2] = 2ic\sigma_1 + 2is\sigma_3.

   Notice that :math:`\sigma_3` has diagonal terms only. It will dispear when we apply :math:`1-\mathscr D` which removes the diagonal elements, i.e.,

   .. math::
      (1-\mathscr D)\hat L \sigma_1 &= -2ic\sigma_2 \\
      (1-\mathscr D)\hat L \sigma_2 &= 2ic\sigma_1.

   **Diagonalized density matrix** :math:`\rho_d=\mathrm {diag}(\rho_1,\rho_2)` is

   .. math::
      \mathrm {\rho_d} &= \begin{pmatrix} \rho_1 & 0 \\ 0 & \rho_2 \end{pmatrix} \\
      & = \frac{1}{2} \left(\begin{pmatrix} \rho_1 -\rho_2 & 0 \\ 0 & \rho_2 -\rho_1 \end{pmatrix} + \begin{pmatrix} \rho_1+\rho_2 & 0 \\ 0 & \rho_1 + \rho_2 \end{pmatrix} \right) \\
      & = \frac{1}{2}\left( (\rho_1-\rho_2)\sigma_3 + (\rho_1+\rho_2)\mathbf I \right)

   Apply :math:`(1-\mathscr D)\hat L` we get

   .. math::
      (1-\mathscr D)\hat L \rho_d &= i s (\rho_2-\rho_1) \sigma_2,\\
      \mathscr D \hat L \rho_d & = -\frac{1}{2}c (\rho_1+\rho_2)\sigma_3.


.. admonition:: Exponential Operator
   :class: note

   Exponential operator is understood when series expansion is done,

   .. math::
      e^{\hat A} = \hat I + \hat A + \frac{1}{2!}{\hat A}^2 + \frac{1}{3!} {\hat A}^3 +\cdots


Recall that the master equation is

.. math::
   \partial_t \rho_d(t) &= - i \mathscr D \hat L \rho_d - \mathscr D\int_0^t dt' e^{-i(1-\mathscr D)\hat L (t-t')} (1-\mathscr D) \hat L \hat \rho_d(t') \\
   & = \frac{1}{2}ic(\rho_1+\rho_2)\sigma_3 - \mathscr D \int_0^t dt' \left( i s (\rho_2-\rho_1) e^{-i(1-\mathscr D)\hat L (t-t')} \sigma_2  \right) \\


So we need to calculate

.. math::
   e^{-i(1-\mathscr D)\hat L (t-t')} \sigma_2 &= \left[1 -i(1-\mathscr D)\hat L (t-t')  + \frac{1}{2} (-i(1-\mathscr D)\hat L (t-t') )^2 + \frac{1}{3!}(-i(1-\mathscr D)\hat L (t-t') )^3 + \cdots \right]\sigma_2
   &\equiv T_0 + T_1 + \frac{1}{2} T_2 +  \frac{1}{3!}T_3 + \cdots .


We will calculate it term by term and find the pattern.

.. math::
   T_0 = \sigma_2

.. math::
   T_1 &= -i(1-\mathscr D)\hat L (t-t') \sigma_2 \\
   & = 2c\sigma_1 (t-t')

.. math::
   T_2 & = -i(1-\mathscr D)\hat L (t-t') (2c\sigma_1 (t-t')) \\
   & = -i(t-t')^2 2c(-2ic\sigma_2) \\
   & = - 2^2 c^2 (t-t')^2 \sigma_2

.. math::
   T_3 & = -i(1-\mathscr D)\hat L (t-t') (- 4c^2 (t-t')^2 \sigma_2) \\
   & = -2^3c^3(t-t')^3\sigma_1


Carry on this calculation we can infer that

.. math::
   e^{-i(1-\mathscr D)\hat L (t-t')} \sigma_2 &= \sigma_2 + 2c\sigma_1 (t-t') + \frac{1}{2}(- 2^2 c^2 (t-t')^2 \sigma_2) +  \frac{1}{3!}(-2^3c^3(t-t')^3\sigma_1) + \cdots









Neutrino Oscillation in Matter - A Possible Master Equation Approach
----------------------------------------------------------------------------------------------







Self Interaction Between Neutrinos
-----------------------------------------------

The neutrino-neutrino interaction Hamiltonian involves the density matrix, which makes it very hard to find a closed equation.


.
