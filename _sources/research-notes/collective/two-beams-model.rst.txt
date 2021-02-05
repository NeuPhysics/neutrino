Two Beams Model
======================


I need to understand several phenomena people mentioned.

1. Why crossing leads to instability?
2. What exactly is happening when we break the symmetries?


.. admonition:: TODO
   :class: warning

   I need to make a table or something to really make it easy to access.


.. _two-beams-model:

Two Beams Model
------------------------

We use a simple two-beam line model.

.. figure:: assets/some-clarifications/two-beam-line-model.png
   :align: center

   Two-beam model. Using this model we can check the effect of different symmetries.

For convinience of notations, we define a number density distribution function

.. math::
   f(\hat v,\omega)= \frac{n(\hat v,\omega)}{n_t},

where :math:`n_t` is the total number density of all neutrino emitted, :math:`n(\hat v,\omega)` is the number density with momentum direction :math:`\hat v` and energy :math:`\omega`.

We also define

.. math::
   \mu = \sqrt{2}G_F n_t.

For two dimensional systems, we can calculate the neutrinos within an angle :math:`[\theta,\theta+d\theta]`

.. math::
   n_t f(\hat v,\omega) d\theta.


Similarly we can define the angular distribution for antineutrinos.


All Neutrino Beams
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If all the beams are neutrinos, but with different energies for the left and right beams. The distribution function for beams is delta function. In fact, each beam is just half of the total neutrino number density :math:`n_t`.

The Hamiltonian is a sum of vacuum terms, matter terms, and self-interaction terms,

.. math::
   H= H_v + H_m + H_{\nu\nu},

where

.. math::
   H_v =& - \eta \frac{1}{2}\omega \sigma_3 \\
   H_m =& \frac{1}{2}\lambda \sigma_3\\
   H_{\nu\nu}^L =& \frac{1}{2}\mu^R \rho^R (1-\cos(\theta_1-\theta_2))\\
   H_{\nu\nu}^R =& \frac{1}{2}\mu^L \rho^L (1-\cos(\theta_1-\theta_2)).


To linearize the equation of motion, we define the perturbed density matrix as

.. math::
   \rho = \frac{1}{2}\begin{pmatrix}
   1 & \epsilon\\
   \epsilon^* & -1
   \end{pmatrix},

where we have removed the trace part because it is alway time independent.


The linearized equation of motion becomes

.. math::
   i \partial_z \begin{pmatrix}
   \epsilon_1 \\
   \epsilon_2
   \end{pmatrix} =&  - i \begin{pmatrix}\cot\theta_1\partial_x & 0 \\
   0 & \cot\theta_2 \partial_x
   \end{pmatrix} \begin{pmatrix}
   \epsilon_1 \\
   \epsilon_2
   \end{pmatrix} \\
   &+
   \frac{1}{2}\begin{pmatrix}
   (\lambda+ \mu_2 - \eta \omega_1 - \mu_2 \cos(\theta_1-\theta_2) )/\sin \theta_1 & -\mu_2 (1-\cos(\theta_1-\theta_2)) /\sin \theta_1\\
   -\mu_1 (1- \cos(\theta_1-\theta_2))/\sin\theta_2 & (\lambda + \mu_1 - \eta \omega_2 - \mu_1 \cos(\theta_1-\theta_2) )/\sin\theta_2
   \end{pmatrix}\begin{pmatrix}
   \epsilon_1 \\
   \epsilon_2
   \end{pmatrix},
   :label: eqn-line-model-two-beams-all-neutrino-linearized-eom


where

.. math::
   \mu_1 =& \sqrt{2}G_F n_{t,1}\\
   \mu_2 =& \sqrt{2}G_F n_{t,2}.


We know that real symmetric matrix has only real eigenvalues, from which we infer that :math:`\mu_1=\mu_2` and :math:`\theta_1=\theta_2` removes the instability.

For translational symmetric models, that is :math:`\partial_x\to 0`, we have the eigenvalues

.. math::
   \Omega = \frac{1}{4}(A\pm B),

where

.. math::
   A=& -\eta \omega_1/\sin\theta_1 - \mu_2 /\sin\theta_1 + \eta \omega_2 /\sin\theta_2 + \mu_1 \xi /\sin\theta_2 + \lambda(1/\sin\theta_1 + 1/\sin\theta_2)  \\
   B=& \sqrt{
      -4[(\lambda-\eta\omega_1)(\lambda +\eta\omega_2) + (\lambda (\mu_1-\mu_2) -\eta (\mu_1\omega_1 + \mu_2\omega_2) )\xi ] \sin\theta_1 \sin\theta_2 + [(\lambda + \eta\omega_2 + \mu_1\xi) \sin\theta_1 + (\lambda - \eta \omega_1 - \mu_2\xi) \sin\theta_2 ]^2
   }/(\sin\theta_1\sin\theta_2)\\
   \xi=&1-\cos(\theta_1-\theta_2).



.. admonition:: All Antineutrino Beams
   :class: note


   I only need to change :math:`\mu_i\to -\bar\mu_i` and :math:`\omega_i\to -\bar\omega_i`, where :math:`\bar\mu=\sqrt{2}G_F \bar n_t`.

   .. math::
      i \partial_z \begin{pmatrix}
      \epsilon_1 \\
      \epsilon_2
      \end{pmatrix} =&  - i \begin{pmatrix}\cot\theta_1\partial_x & 0 \\
      0 & \cot\theta_2 \partial_x
      \end{pmatrix} \begin{pmatrix}
      \epsilon_1 \\
      \epsilon_2
      \end{pmatrix} \\
      &+
      \frac{1}{2}\begin{pmatrix}
      (\lambda-\bar\mu_2 + \eta \bar\omega_1 + \bar\mu_2 \cos(\theta_1-\theta_2) )/\sin \theta_1 & \bar\mu_2 (1-\cos(\theta_1-\theta_2)) /\sin \theta_1 \\
      \bar\mu_1 (1- \cos(\theta_1-\theta_2))/\sin\theta_2 & (\lambda -\bar\mu_1 + \eta \bar\omega_2 +\bar\mu_1 \cos(\theta_1-\theta_2) )/\sin\theta_2
      \end{pmatrix}\begin{pmatrix}
      \epsilon_1 \\
      \epsilon_2
      \end{pmatrix}



.. admonition:: One Antineutrino and One Neutrino Beams
   :class: note

   Assume that the left beam is neutrino beam and the right beam is antineutrno beam. The linearized equation of motion becomes

   .. math::
      i\partial_z \begin{pmatrix}
      \epsilon_1 \\
      \epsilon_2
      \end{pmatrix} = & -i\begin{pmatrix}
      \cot\theta_1 \partial_x & 0 \\
      0 & \cot\theta_2 \partial_x
      \end{pmatrix}\begin{pmatrix}
      \epsilon_1 \\
      \epsilon_2
      \end{pmatrix} \\
      &+ \frac{1}{2}\begin{pmatrix}
      (\lambda - \bar\mu - 2\eta \omega_1 + \bar\mu \cos(\theta_1-\theta_2) )/\sin\theta_1 & \bar\mu (1-\cos(\theta_1-\theta_2))/\sin\theta_1 \\
      -\mu(1-\cos(\theta_1-\theta_2))/\sin\theta_2 & (\lambda + \mu + \eta \omega_2 - \mu \cos(\theta_1-\theta_2) )/\sin\theta_2
      \end{pmatrix}\begin{pmatrix}
      \epsilon_1 \\
      \epsilon_2
      \end{pmatrix}


Simple Cases
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

We first consider a simple case, where :math:`\theta_1=\theta_2\equiv\theta` :math:`\lambda=0`, :math:`\eta=1`, and homogeneous in x direction. For simplicity we define

.. math::
   \mu =& \sqrt{2}G_F (n_1 + n_2)\\
   \mu_i =& \mu \frac{n_i}{n_1+n_2}\equiv \mu f_i \\
   \xi = & 1-\cos(\theta_1-\theta_2)\\
   \omega'_i = & \lambda - \eta\omega_i.


.. admonition:: Not A Self-consistant Example
   :class: warning

   This is not a self-consistant example since :math:`\theta_1=\theta_2` indicates that :math:`\xi=0`. As we will see, no instability is present in this case.

   However, we keep the term :math:`\xi` because we need to analyze the effect of symmetry breaking. This example builds up a formalism.

The equation for perturbations becomes

.. math::
   i\partial_z\begin{pmatrix}
   \epsilon_1 \\
   \epsilon_2
   \end{pmatrix} = \frac{1}{2\sin\theta} \begin{pmatrix}
   \omega'_i + \mu f_2\xi & -\mu f_2 \xi \\
   -\mu f_1 \xi & \omega'_2 + \mu f_1 \xi
   \end{pmatrix}\begin{pmatrix}
   \epsilon_1 \\
   \epsilon_2
   \end{pmatrix}.
   :label: eqn-linearized-eom-symmetric-eg

Since :math:`\mu` is the most important energy scale in this problem, we scale all energies with it.

.. math::
   i\partial_{\hat z}\begin{pmatrix}
   \epsilon_1 \\
   \epsilon_2
   \end{pmatrix} = \frac{1}{2\sin\theta} \begin{pmatrix}
   \hat\omega'_1 +  f_2\xi & - f_2 \xi \\
   - f_1 \xi & \hat\omega'_2 +  f_1 \xi
   \end{pmatrix}\begin{pmatrix}
   \epsilon_1 \\
   \epsilon_2
   \end{pmatrix},

where

.. math::
   \partial_{\hat z} =& \frac{d}{\mu dz} \\
   \hat \omega'_i =& \frac{\omega'_i}{\mu}.



The characteristic equation for this equation is

.. math::
   \left( ( \Omega - \hat\omega'_1 - f_2\xi )(\Omega - \hat\omega'_2-f_1\xi) - f_1 f_2 \xi^2 \right) =0,
   :label: eqn-two-beam-line-characteristic-eqn-simple

which is simplified to

.. math::
   (\Omega-\Omega_1)(\Omega-\Omega_2) -f_1f_2\xi^2 = 0,

where

.. math::
   \Omega_1 = & \hat\omega'_1 + f_2 \xi\\
   \Omega_2 = & \hat\omega'_2 + f_1 \xi.


Complete the square

.. math::
   (\Omega - (\Omega_1 + \Omega_2)/2)^2 = \frac{1}{4}(\Omega_1-\Omega_2) + f_1f_2\xi^2.


The solution becomes

.. math::
   \Omega = \frac{1}{2}(\Omega_1+\Omega_2)\pm\sqrt{ (\Omega_1-\Omega_2)^2/4 + f_1f_2\xi^2 }.

The condition to have positive imaginary part is

.. math::
   (\Omega_1-\Omega_2)^2 + 4f_1f_2\xi^2 < 0,

or

.. math::
   -2\sqrt{-f_1f_2\xi^2}<\Omega_1-\Omega_2<2\sqrt{-f_1f_2\xi^2},

and :math:`f_1f_2\xi^2<0`. Recall the meaning of :math:`f_i`,

.. math::
   f_i = \frac{n_i}{n_1+n_2},

instability requires that we have a spectrum crossing, i.e., :math:`n_1` and :math:`n_2` have different signs.


Plug in the definitions of :math:`\Omega_i`,

.. math::
   -2\sqrt{-f_1f_2\xi^2}< \eta(- \omega_1 + \omega_2)/\mu + (f_2 - f_1)\xi < 2\sqrt{-f_1f_2\xi^2}.

From this we can infer

1. :math:`f_1f_2` has to be negative, which means we can NOT have instabilities with only neutrinos or antineutrinos with all the symmetries we assumed. This is :highlight-text:`crossing`.
2. :math:`-\omega_1+\omega_2=0` will remove the instability. So we have to have both neutrinos and antineutrinos.
3. :math:`f_2-f_1`, :math:`\eta(\omega_2-\omega_1)`, and :math:`\mu` set limit on each other.
4. :math:`\theta_1=\theta_2\equiv \theta` removes the instability since it leads to :math:`\xi=0`. The emission has to be asymmetric in this simple two beams model. **This is trivial since equal emission angle means the beams are not colliding.**


.. admonition:: But why?
   :class: warning

   We have these conclusions. But why?

   What are the roles of

   1. :math:`f_i`,
   2. neutrino beam and antineutrino beam,
   3. hierarchy,
   4. neutrino number density variations,
   5. variations of angular distributions of neutrinos,
   6. variations of energy spectrum of neutrinos.


.. admonition:: Real Symmetric and Skew Symmetric
   :class: toggle

   Another way of understanding this equation is to think of it as the growth of the length of the vector :math:`\vec v = (\epsilon_1,\epsilon_2)^T`. For an arbitrary matrix differential equation of the form

   .. math::
      \partial_z \mathbf v = \mathbf A \mathbf v,

   we can always decompose the matrix :math:`\mathbf A` into symmetric part and skew-symmetric part

   .. math::
      \mathbf A = \frac{1}{2}(\mathbf A + \mathbf A^T) + \frac{1}{2}(\mathbf A - \mathbf A^T) \equiv \mathbf A^+ + \mathbf A^-.

   We can indentify the effect of :math:`f_1-f_2` but this is not particularly useful since we can not say anything about the eigenvalues of matrix :math:`\mathbf A` from the eigenvalues of matrix :math:`\mathbf A^+` and :math:`\mathbf A^-`.



Breaking Symmetries
---------------------


For a line model, the symmetries we have are

1. Time translation symmetry;
2. Translational symmetry along the line;
3. Energy spectrum of the beams; **One of particular interest is to have different neutrino spheres for different energies which can be investigated using two beam model.**
4. Number density of left and right beams;
5. Angle of left and right beams;
6. With and without matter.


In this subsection we provide simple pictures of some the symmetries mentioned above.



Emission Angle Parity Symmetry
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The emission angles change the value of :math:`\xi=1-\cos(\theta_1-\theta_2)` as well as rescale the quantities by angle dependent factor :math:`1/\sin\theta_i`.

To see the importance of angles, we can redefine some quantities

.. math::
   \omega''_i=& \frac{\omega'_i}{\sin\theta_i}\\
   f''_1=&\frac{f_1}{\sin\theta_2} \\
   f''_2=&\frac{f_2}{\sin\theta_1}.

The we will reach the same characteristic equation as Eq. :eq:`eqn-two-beam-line-characteristic-eqn-simple`. So the angles serves as shift of energy gap and angular distribution.

The region of instability changes in a convoluted way. Given angles we can always write down the expression and find out.

1. The criteria of existance of instability doesn't change.
2. The region of instability changes.



Matter Effect
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Including matter will define vacuum frequencies, :math:`\omega'_i`, which is effectively just a shift of vacuum frequencies. In the symmetric emission case, :math:`\omega'_1-\omega'_2` is independent of matter effect. But breaking the emission symmetry generates the degeneracy,

.. math::
   \hat\omega''_1-\hat\omega''_2=( \lambda/\sin\theta_1 - \lambda/\sin\theta_2 + \eta(- \omega_1/\sin\theta_1 + \omega_2/\sin\theta_2) )/\mu`.

1. Very large matter density shift the region to very small :math:`\mu`.


.. admonition:: Varying Matter Potential
   :class: note

   However, matter effect is not always this simple. Suppose we have different matter potential for different beams, when they collide they would have built a different phase due to matter effect.

   The inhomogeneous matter effect has been studied in [Mangano2014]_. It can excite high Fourier moments of polarization vector, which makes a lot of sense because it generates fine structure in the x direction.

   This can be integrated into LESA effect.


   .. [Mangano2014] Mangano, G., Mirizzi, A., & Saviano, N. (2014). Damping the neutrino flavor pendulum by breaking homogeneity. Physical Review D, 89(7), 73017. https://doi.org/10.1103/PhysRevD.89.073017


Translational Symmetry
~~~~~~~~~~~~~~~~~~~~~~~~~

Translational symmetry is explained by introducing Fourier transform in x direction. For each mode, a term that is proportional to Fourier mode index m. It only appears in diagonal elements, thus is effectively a shift of vacuum frequencies, thus energies of neutrinos.

For each Fourier mode

.. math::
   \begin{pmatrix}
   \epsilon_1 \\
   \epsilon_2
   \end{pmatrix} =  \mathbf Q(\Omega,k) e^{-i(\Omega t- k x)},

where we set :math:`\Omega=0`.

First term in RHS of Eq. :eq:`eqn-line-model-two-beams-all-neutrino-linearized-eom` becomes

.. math::
   - i \begin{pmatrix}\cot\theta_1\partial_x & 0 \\
   0 & \cot\theta_2 \partial_x
   \end{pmatrix} \begin{pmatrix}
   \epsilon_1 \\
   \epsilon_2
   \end{pmatrix} = k \begin{pmatrix}\cot\theta_1 & 0 \\
   0 & \cot\theta_2
   \end{pmatrix} \begin{pmatrix}
   Q_1 \\
   Q_2
   \end{pmatrix}.

We now define :math:`\hat\omega''_i`,


.. math::
   \hat\omega''_{k,i} = \hat \omega''_i + 2\hat k\cot\theta_i,

where :math:`\hat k=k/\mu`.

The k term contributes to the difference between :math:`\Omega_{k,i}\equiv \hat\omega''_{k,i}+ f''_i\xi`.

**Instability criteria doesn't change. However, the regime of instability changes.** We also know that the instability region is determined by

.. math::
   \lvert \Delta\hat\omega''_{12} + 2\hat k (\cot \theta_1 - \cot\theta_2) + \Delta f''_{12}\xi \rvert < \sqrt{-f_1f_2\xi^2},

where :math:`\Delta \hat \omega''_{12} = \hat\omega''_1-\hat\omega''_2`. The instability region shift from

.. math::
   -\sqrt{-f''_1f''_2\xi^2} -\Delta f''_{12}\xi < (\Delta\omega''_{12} + 2 k(\cot\theta_1-\cot\theta_2))/\mu < \sqrt{-f''_1f''_2\xi^2} -\Delta f''_{12}\xi

If :math:`\lvert \Delta\omega''_{12} + 2 k(\cot\theta_1-\cot\theta_2) \rvert` becomes larger, the region of instability is shifted to larger :math:`\mu`, i.e., larger number density.



Number Density of Emission
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A crossing is required to have instability, i.e., :math:`-f''_1f''_2>0`. Meanwhile the number density on the left and right have little effects on the existance of instability. It shifts the region of instability for :math:`\mu`.


Energy of Emission
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


Different energy of two beams will make sure :math:`-\omega_1 + \omega_2\neq 0`. It has no effects on the criteria but changes the :math:`\mu` region of instability.


Time Translational Symmetry
~~~~~~~~~~~~~~~~~~~~~~~~~~~~


.. admonition:: Time Translational Symmetry
   :class: warning

   How about time translational symmetry? I need to write down the equation of motion that is related to time.

   Two limits are of particular interest.

   1. Adiabatic limit,
   2. Superfast time variants.






Numerical Calculations
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


We assume the two beams have different energy, as indicated by :math:`\omega_1` and :math:`\omega_2` in Eq. :eq:`eqn-line-model-two-beams-all-neutrino-linearized-eom`.


For numerical calcualtions, we scale quantities using :math:`\mu`.

With symmetric angles for the two beams, I didn't find instabilities. However, :math:`\theta_1\neq \theta_2` leads to instabilities in IH, which is consistant with our expections.



For NH:


.. image:: assets/some-clarifications/allneutrinos/line-two-beam-eta-1-lambda-0-mu-10-alpha-0.5-theta1-pi-div-3-theta2-pi-div-6.png
   :width: 31%
.. image:: assets/some-clarifications/allneutrinos/line-two-beam-eta-1-lambda-0-mu-10-alpha-1.-theta1-pi-div-3-theta2-pi-div-6.png
   :width: 31%
.. image:: assets/some-clarifications/allneutrinos/line-two-beam-eta-1-lambda-0-mu-10-alpha-1.5-theta1-pi-div-3-theta2-pi-div-6.png
   :width: 31%

.. image:: assets/some-clarifications/allneutrinos/line-two-beam-eta-1-lambda-0-mu-10-alpha-0.5-theta1-pi-div-6-theta2-pi-div-3.png
   :width: 31%
.. image:: assets/some-clarifications/allneutrinos/line-two-beam-eta-1-lambda-0-mu-10-alpha-1.-theta1-pi-div-6-theta2-pi-div-3.png
   :width: 31%
.. image:: assets/some-clarifications/allneutrinos/line-two-beam-eta-1-lambda-0-mu-10-alpha-1.5-theta1-pi-div-6-theta2-pi-div-3.png
   :width: 31%

.. image:: assets/some-clarifications/allneutrinos/line-two-beam-eta-1-lambda-0-mu-10-alpha-0.5-theta1-pi-div-3-theta2-pi-div-3.png
   :width: 31%
.. image:: assets/some-clarifications/allneutrinos/line-two-beam-eta-1-lambda-0-mu-10-alpha-1.-theta1-pi-div-3-theta2-pi-div-3.png
   :width: 31%
.. image:: assets/some-clarifications/allneutrinos/line-two-beam-eta-1-lambda-0-mu-10-alpha-1.5-theta1-pi-div-3-theta2-pi-div-3.png
   :width: 31%



Non-local Symmetry Breaking
-----------------------------


What was shown up there is breaking of symmetry locally. Similar to the discussion of varying matter potential, other symmetries can be broken globally, i.e., distribution as a function of spacetime coordinates.
