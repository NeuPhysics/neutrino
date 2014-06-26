Neutrino Oscillation And Master Equation
==================================

.. admonition:: Question
   Why do we think about master equation?

.. admonition:: Answer
   The terms we care the most are the populations of the states. One of the treatment of quantum master equation is to write down the closed equations for population terms only. A very beautiful example is the projection method invented by Zwawzig and Nakajiwa.



Quantum Master Equation
---------------------------------


.. admonition:: How Does Projection Technique Work?
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
   \mathbf\rho = \begin{pmatrix}\rho_{aa} &}\rho_{ab} \\ }\rho_{ba} & }\rho_{bb}\end{pmatrix} .

The quantum master equation we would like to use is

.. math::
   \partial_t \hat \rho_d = - i\hat D\hat L \hat \rho_d -  \hat D\hat L \int_0^t dt' e^{-i(1-\hat D) \hat L (t-t')}(1-\hat D)\hat L \hat \rho_d(t') .





.
