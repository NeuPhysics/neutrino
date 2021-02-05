Mathematics Related
=================================================



Pauli Matrices
-------------------------------

.. math::
   \sigma_1 &= \begin{pmatrix} 0 & 1 \\ 1 & 0   \end{pmatrix} \\
   \sigma_2 &= \begin{pmatrix} 0 & -i \\ i & 0   \end{pmatrix} \\
   \sigma_3 &= \begin{pmatrix} 1 & 0 \\ 0 & -1   \end{pmatrix}

Some useful transformations about Pauli matrices:

Given a transformation

.. math::
   \mathbf{U} =
   \begin{pmatrix}
   cos \theta & \sin \theta \\
   -\sin \theta & \cos \theta
   \end{pmatrix},

Pauli matrices transform in the following way

.. math::
   \mathbf{U}^\dagger \sigma_3 \mathbf{U} &= \cos 2\theta \sigma_3 - \sin 2\theta \sigma_1 \\
   \mathbf{U}^\dagger \sigma_1 \mathbf{U} &= -\sin 2\theta \sigma_3 + \cos 2\theta \sigma_1 \\
   \mathbf{U}^\dagger \sigma_2 \mathbf{U} &= \sigma_2.




In general, Pauli matrices is not invariant under unitary transformation. One of the ways to look at it is to write the unitary transformation using Pauli matrices, :math:`U = n_i\sigma_i`.

.. math::
   U^\dagger \sigma_l  U &= n_i^* \sigma_i^\dagger \sigma_l n_j \sigma_j \\
   & = n_i^* n_j \sigma_i \sigma_l \sigma_j \\
   & = n_i^* n_j \sigma_i( \sigma_j \sigma_l + 2i\epsilon_{ijk}\sigma_k )\\
   & = n_i^* n_j ( \sigma_i \sigma_j \sigma_l + 2i\epsilon_{ljk} \sigma_i\sigma_k ) \\
   & = n_i^* n_j \sigma_i \sigma_j \sigma_l  + 2i n_i^* n_j \epsilon_{ljk} \sigma_i\sigma_k.

For unitary U, we have

.. math::
   I &= U^\dagger U \\
   & = n_i^* n_j \sigma_i \sigma_j.

Thus


.. math::
   U^\dagger \sigma_l  U = \sigma_l + 2i n_i^* n_j \epsilon_{ljk} \sigma_i\sigma_k.

The second term can be rewritten using the properties of Pauli matrices and Levi-Civita symbol but no significant simplification is shown.



Spherical Harmonics
--------------------------------


.. figure:: assets/math/558px-3D_Spherical.svg.png
   :align: center

   Physicists' convention of spherical coordinate system. By Andeggs, Public Domain, `Link <https://commons.wikimedia.org/w/index.php?curid=7478049>`_.

A vector in spherical coordinates is

.. math::
   \mathbf r = \begin{pmatrix} r\sin\theta \cos \phi & r\sin\theta \sin \phi & r\cos\theta \end{pmatrix}.


Suppose we have two vectors :math:`r_1` and :math:`r_2`. Multiplication of them becomes

.. math::
   \mathbf r_1 \cdot \mathbf r_2 &= r_1 r_2 \left[\sin\theta_1 \sin\theta_2\left( \cos\phi_1 \cos\phi_2 +   \sin\phi_1\sin\phi_2 \right) +  \cos \theta_1 \cos\theta_2\right]\\
   &=r_1 r_2 \left[\sin\theta_1 \sin\theta_2 \cos(\phi_1-\phi_2) +  \cos \theta_1 \cos\theta_2\right]

Meanwhile, we can expand the inner product using spherical harmonics. I steal the expression from `wikipedia <https://en.wikipedia.org/wiki/Table_of_spherical_harmonics>`_:

.. math::
   Y_{0}^{0}(\theta,\varphi)&={1\over 2}\sqrt{1\over \pi} & \\
   Y_{1}^{-1}(\theta,\varphi) &=  {1\over 2}\sqrt{3\over 2\pi}\cdot e^{-i\varphi}\cdot\sin\theta &= {1\over 2}\sqrt{3\over 2\pi} \cdot{(x-iy)\over r} \\
   Y_{1}^{ 0}(\theta,\varphi) &=  {1\over 2}\sqrt{3\over  \pi}\cdot     \cos\theta &= {1\over 2}\sqrt{3\over  \pi} \cdot{z\over r} \\
   Y_{1}^{ 1}(\theta,\varphi) &= - {1\over 2}\sqrt{3\over 2\pi}\cdot e^{i\varphi}\cdot \sin\theta &= -{1\over 2}\sqrt{3\over 2\pi} \cdot{(x+iy)\over r}

Then we notice that

.. math::
   {Y_1^{1}}^*(\theta_1,\phi_1) Y_1^1(\theta_2,\phi_2) + {Y_1^{-1}}^* (\theta_1,\phi_1) Y_1^{-1} (\theta_2,\phi_2) &= 3\times \frac{1}{4\pi} \frac{x_1 x_2 + y_1 y_2}{r_1 r_2} \\
   {Y_1^0}^*(\theta_1,\phi_1) Y_1^0(\theta_2,\phi_2) &= 3\times\frac{1}{4\pi} \frac{z_1z_2}{r_1r_2}.


The inner product of two vectors becomes

.. math::
   \mathbf r_1 \cdot \mathbf r_2 = \frac{4\pi}{3} r_1 r_2 \left[ {Y_1^0}^*(\theta_1,\phi_1) Y_1^0(\theta_2,\phi_2) + {Y_1^{1}}^*(\theta_1,\phi_1) Y_1^1(\theta_2,\phi_2) + {Y_1^{-1}}^* (\theta_1,\phi_1) Y_1^{-1} (\theta_2,\phi_2)  \right].

In fact, we have another identity

.. math::
   1 - \mathbf r_1 \cdot \mathbf r_2 = 4\pi Y_0^0  +  \frac{4\pi}{3} r_1 r_2 \left[ {Y_1^0}^*(\theta_1,\phi_1) Y_1^0(\theta_2,\phi_2) + {Y_1^{1}}^*(\theta_1,\phi_1) Y_1^1(\theta_2,\phi_2) + {Y_1^{-1}}^* (\theta_1,\phi_1) Y_1^{-1} (\theta_2,\phi_2)  \right]

It is helpful analytical derivations of terms related inner product of vectors (even four vectors) and decompose them into different spherical modes.


The Equations
--------------------------------

For 2 flavor oscillations, the equation for flavor neutrinos is

.. math::
   i \frac{d}{dt} \begin{pmatrix} \nu_e \\ \nu_x \end{pmatrix} = \frac{\Delta m^2}{4E} \begin{pmatrix} - \cos 2\theta & \sin 2\theta \\  \sin 2\theta  & \cos 2\theta   \end{pmatrix} \begin{pmatrix} \nu_e \\ \nu_x \end{pmatrix}

and with matter

.. math::
   i \frac{d}{dt} \begin{pmatrix} \nu_e \\ \nu_x \end{pmatrix} = \frac{\Delta m^2}{4E} \begin{pmatrix} \frac{4E}{\Delta m^2} \sqrt{2} G_F n_e - \cos 2\theta   & \sin 2\theta \\  \sin 2\theta  &  \cos 2\theta   \end{pmatrix} \begin{pmatrix} \nu_e \\ \nu_x \end{pmatrix}


.. index:: Equation Solving

Equation Solving
-------------------------------


Logarithmic Perturbation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Balantekin et al 1988 [Balantekin1988]_ used this method to solve equation

.. math::
   - \frac{d^2}{dx^2} \psi_e - \left( \frac{1}{4}\left( \lambda(x) - \omega_v \cos 2\theta_v  \right)^2 + i \frac{1}{2}\frac{d}{dx} \left( \lambda(x) - \omega_v \cos 2\theta_v  \right) \right) \psi_e - (\omega_v \cos 2\theta_v)^2 \psi_e = 0


for small mixing angle. This is done by expand the system on a small parameter :math:`g = 1- \cos 2\theta_v` and assuming the solution has the form :math:`\psi_e = \exp\left( S(x) \right)`. [Dasgupa2007]_



.. [Balantekin1988] A. B.  Balantekin,  S. H.  Fricke,  and  P. J.  Hatchell,  Phys.Rev. D38, 935 (1988)
.. [Dasgupa2007] Dasgupta, B., & Dighe, A. (2007). Phase effects in neutrino conversions during a supernova shock wave. Physical Review D, 75(9), 093002. doi:10.1103/PhysRevD.75.093002




.. index:: Qualitative Analysis

Qualitative Analysis
-----------------------------------

The vacuum oscillation is determined by autonomous equations. A fixed point of an autonomous system is defined by

.. math::
   \frac{d}{dt} \begin{pmatrix} \nu_e \\ \nu_x \end{pmatrix}=0,

which means the so called "velocity" is 0. For vacuum oscillation, we set

.. math::
    \begin{pmatrix} - \cos 2\theta & \sin 2\theta \\  \sin 2\theta  & \cos 2\theta   \end{pmatrix} \begin{pmatrix} \nu_e \\ \nu_x \end{pmatrix} =0.

Thus we find the fixed points,

.. math::
   \nu_e & = 0 \\
   \nu_x & = 0.

If we have only the ith function with derivative 0, the line is called the ith-nullcline. Thus the fixed points are the interaction points of all the nullclines.



These fixed points are very useful. In general, for a set of autonomous equations,

.. math::
   f'(x) & = F(f,g)\\
   g'(x) & = G(f,g),

by definition the fixed point in phase space :math:`\{f_i,g_i\}` leads to the result

.. math::
   F(f,g) & = 0\\
   G(f,g) & = 0.

Thus the equations can be approximated using Taylor expansion near the point :math:`\{f_i,g_i\}`, since at the fixed points the derivatives are small.

.. math::
   \frac{d}{dx} &= F(f,g) \\
   & = F(f_i,g_i) + \frac{\partial F(f,g)}{\partial f}\vert_{f=f_i,g=g_i} (f-f_i)+ \frac{\partial F(f,g)}{\partial g}\vert_{f=f_i,g=g_i} (g-g_i)+ \mathcal O(2).

The equations are simplified to linear equations whose coefficient matrix is simply the Jacobian matrix of the original system at the fixed point :math:`\{f_i,g_i \}`. In this example, the coefficient matrix for the linearized system is

.. math::
   \mathbf{C} = \begin{pmatrix} \frac{\partial F(f,g)}{\partial f}\vert_{f=f_i,g=g_i} &   \frac{\partial F(f,g)}{\partial g}\vert_{f=f_i,g=g_i}  \\
   \frac{\partial G(f,g)}{\partial f}\vert_{f=f_i,g=g_i}  &  \frac{\partial G(f,g)}{\partial g}\vert_{f=f_i,g=g_i}  \end{pmatrix}.

As a comparison, the Jacobian matrix for the orginal equations at the fixed point is also the same which quite makes sense because Jacobian itself is telling the first order approximation of the velocity.

This linearization is only valid for hyperbolic fixed points which means that the eigenvalues of Jacobian matrix at fixed point has non-zero real part. Suppose the Jacobian is :math:`\mathbf{J}` with eigenvalues are :math:`\lambda_j`, a hyperbolic fixed point requires that :math:`\mathcal{Re}\lambda_j\neq 0`.

For more analysis, checkout `Poincare-Lyapunov Theorem`.[1]_

Define :math:`p=\mathrm{Tr}(\mathbf{J}(f_i,g_i))` and :math:`q=\mathrm{det}(\mathbf{J}(f_i,g_i))` then the systems can be categorized into 3 different categories given the case that the fixed point isa hyperbolic one.



.. figure:: assets/math/fixedpoints-massoudmalek.png
   :align: center

   A diagram that shows the different categorizations given p and q values. Repellers and saddle points are unstable points but attractors are stable. Or in simple ways, given the eigenvalues of the Jacobian :math:`\lambda_1, \lambda_2`, :math:`Re(\lambda_1)>0, Re(\lambda_2)>0` gives us a repeller, :math:`Re(\lambda_1)<0, Re(\lambda_2)<0` gives us an attractor while :math:`Re(\lambda_1)<0, Re(\lambda_2)>0` gives us the saddle point.










.. [1] `Nonlinear Systems of Ordinary Differential Equations <http://www.mcs.csueastbay.edu/~malek/Class/nonlinear.pdf>`_ by Massoud Malek, California State University, East Bay.
