Matter Stimulated Oscillation
============================================

We investigate a system with matter potential

.. math::
   \lambda(x) = \lambda_0 + \delta \lambda (x),

where :math:`\lambda_0 = \sqrt{2}G_F n_{e0}` and :math:`\delta \lambda(x) = \sqrt{2}G_F \delta n_e(x)`.




The Hamiltonian in background matter basis :math:`\{\ket{\nu_{\mathrm{L}}},\ket{\nu_{\mathrm{H}}}\}` is

.. math::
   H = - \frac{\omega_m}{2} \sigma_3 + \frac{\delta \lambda}{2} \cos 2\theta_m \sigma_3 - \frac{\delta \lambda}{2} \sin 2 \theta_m \sigma_1.

Here by background matter basis, we mean that the Hamiltonian is diagonalized if perturbation is zero in matter profile.


.. admonition:: Derive the Hamiltonian
   :class: note

   This Hamiltonian can be derived easily using

   .. math::
      H = -\frac{\omega_m}{3}\sigma_3 + \frac{\delta \lambda}{2} U^\dagger \sigma_3 U.


What we are interested in is the transition between two background mass states. If we can have full converstion between the two mass states, we can have full conversion between flavor states.

**A Unitary Transformation**



Suppose the wave function in this basis is written as

.. math::
   \begin{pmatrix} \psi_1 \\ \psi_2 \end{pmatrix}.

To remove the position dependent :math:`\sigma_3` term in the Hamiltonian which prevents us from solving the equation of motion easily, we define a new basis :math:`\{\ket{\tilde\nu_{\mathrm{L}}},\ket{\tilde\nu_{\mathrm{H}}}\}` where the wave function is related to background matter basis through

.. math::
   \begin{pmatrix} \psi_1 \\ \psi_2 \end{pmatrix} = \begin{pmatrix} e^{-i \eta (x)} & 0 \\  0 & e^{i \eta (x)}  \end{pmatrix} \begin{pmatrix} \psi_{b1} \\ \psi_{b2} \end{pmatrix}.


.. admonition:: Transformation of Pauli Matrices
   :class: note

   This transformation, defined as :math:`\mathbf{T}`, is unitary,

   .. math::
      \mathbf{T}^\dagger \mathbf{T} = \mathbf{I}.

   It doesn't change :math:`\sigma_3`.

   .. math::
      \mathbf{T} \sigma_3 \mathbf{T}^\dagger &= \sigma_3\\
      \mathbf{T}^\dagger \sigma_3 \mathbf{T} &= \sigma_3.

   It adds a phase to the off-diagonal elements of :math:`\sigma_1`,

   .. math::
      \mathbf{T} \sigma_1 \mathbf{T}^\dagger &= \begin{pmatrix} 0 & e^{-2i\eta} \\ e^{2 i\eta } & 0 \end{pmatrix} \\
      \mathbf{T}^\dagger \sigma_1 \mathbf{T} &= \begin{pmatrix} 0 & e^{2i\eta} \\ e^{-2 i\eta } & 0 \end{pmatrix}.



   We can also look at the following very general transformation.

   .. math::
      & \begin{pmatrix} e^{i\eta_1} & 0 \\ 0 & e^{-i\eta_1}\end{pmatrix} \begin{pmatrix} a_{11} & a_{12} \\ a_{21} & a_{22}\end{pmatrix}  \begin{pmatrix} e^{i\eta_2} & 0 \\ 0 & e^{-i\eta_2}\end{pmatrix} \\
      = & \begin{pmatrix} a_{11} e^{i(\eta_1+\eta_2)} & a_{12} e^{i(\eta_1 - \eta_2)} \\ a_{21} e^{-i(\eta_1-\eta_2)} & a_{22} e^{-i(\eta_1+\eta_2)}  \end{pmatrix}


   Another very useful relation is

   .. math::
      i\mathbf{T}^{\dagger} \partial_x \mathbf{T} = \partial_x \eta(x) \sigma_3.


The Schrodinger equation in background matter basis is

.. math::
   i\frac{d}{dx}\begin{pmatrix} \psi_{1} \\ \psi_2 \end{pmatrix} = \left(- \frac{\omega_m}{2} \sigma_3 + \frac{\delta \lambda}{2} \cos 2\theta_m \sigma_3 - \frac{\delta \lambda}{2} \sin 2 \theta_m \sigma_1 \right) \begin{pmatrix} \psi_{1} \\ \psi_2 \end{pmatrix}

To write down the Schodinger equation in the new basis, we need the transformation of the Hamiltonian

.. math::
   \mathbf{T}^\dagger \cdot \mathrm{LHS} &= \mathbf{T}^\dagger\left[ i \begin{pmatrix} - i \frac{d\eta}{dx} e^{-i\eta} & 0 \\ 0 & i \frac{d\eta}{dx} e^{i\eta} \end{pmatrix} \begin{pmatrix} \psi_{b1} \\ \psi_{b2} \end{pmatrix} + i \begin{pmatrix}  e^{-i\eta} & 0 \\ 0 & e^{i\eta} \end{pmatrix} \frac{d}{dx} \begin{pmatrix} \psi_1 \\ \psi_2 \end{pmatrix} \right] \\
   & =   i \begin{pmatrix} - i \frac{d\eta}{dx}  & 0 \\ 0 & i \frac{d\eta}{dx}  \end{pmatrix} \begin{pmatrix} \psi_{b1} \\ \psi_{b2} \end{pmatrix} + i \frac{d}{dx} \begin{pmatrix} \psi_1 \\ \psi_2 \end{pmatrix}  .


.. math::
   \mathbf{T}^\dagger \cdot \mathrm{RHS} &= \left[ -\frac{\omega_m}{2} \mathbf{T} ^\dagger \sigma_3 \mathbf{T} + \frac{\delta \lambda}{2} \cos 2\theta_m \mathbf{T}^\dagger \sigma_3 \mathbf{T} - \frac{\delta \lambda}{2} \sin 2\theta_m \mathbf{T}^\dagger \sigma_1 \mathbf{T}   \right] \begin{pmatrix} \psi_{b1} \\ \psi_{b2} \end{pmatrix} \\
   & =  \left[ -\frac{\omega_m}{2} \sigma_3  + \frac{\delta \lambda}{2} \cos 2\theta_m  \sigma_3  - \frac{\delta \lambda}{2} \sin 2\theta_m \begin{pmatrix} 0 & e^{2i\eta} \\ e^{-2 i\eta } & 0 \end{pmatrix}   \right] \begin{pmatrix} \psi_{b1} \\ \psi_{b2} \end{pmatrix} .


The equation of motion in this new basis becomes

.. math::
   \begin{pmatrix}  \frac{d\eta}{dx}  & 0 \\ 0 & - \frac{d\eta}{dx}  \end{pmatrix} \begin{pmatrix} \psi_{b1} \\ \psi_{b2} \end{pmatrix} + i \frac{d}{dx} \begin{pmatrix} \psi_{b1} \\ \psi_{b2} \end{pmatrix} =
   \left[ -\frac{\omega_m}{2} \sigma_3  + \frac{\delta \lambda}{2} \cos 2\theta_m  \sigma_3  - \frac{\delta \lambda}{2} \sin 2\theta_m \begin{pmatrix} 0 & e^{2i\eta} \\ e^{-2 i\eta } & 0 \end{pmatrix}   \right] \begin{pmatrix} \psi_{b1} \\ \psi_{b2} \end{pmatrix}

The key is to remove the :math:`\sigma_3` terms using this transformation, which requires

.. math::
   \begin{pmatrix}  \frac{d\eta}{dx}  & 0 \\ 0 & - \frac{d\eta}{dx}  \end{pmatrix} \begin{pmatrix} \psi_{b1} \\ \psi_{b2} \end{pmatrix} = \left[ -\frac{\omega_m}{2} \sigma_3  + \frac{\delta \lambda}{2} \cos 2\theta_m  \sigma_3 \right] \begin{pmatrix} \psi_{b1} \\ \psi_{b2} \end{pmatrix}.

It reduces to

.. math::
   \frac{d\eta(x)}{dx} = - \frac{\omega_m}{2} + \frac{\delta \lambda(x)}{2} \cos 2\theta_m ,

which has a general solution of the form

.. _matter-stimulated-equation-eta-x-general:

.. math::
   \eta(x) - \eta(0) = - \frac{\omega_m}{2} x + \frac{\cos 2\theta_m}{2} \int_0^x \delta\lambda (\tau) d\tau.
   :label: eta-x-general

We might choose :math:`\eta(0)=0`, which simplifies the relation

.. math::
   \eta(x)= - \frac{\omega_m}{2} x + \frac{\cos 2\theta_m}{2} \int_0^x \delta\lambda (\tau) d\tau.


What is left in the equation of motion is the part where off-diagonal Hamiltonian takes effect,

.. math::
   i \frac{d}{dx} \begin{pmatrix} \psi_{b1} \\ \psi_{b2} \end{pmatrix} = - \frac{\delta \lambda}{2} \sin 2\theta_m \begin{pmatrix} 0 & e^{2i\eta} \\ e^{-2 i\eta } & 0 \end{pmatrix}  \begin{pmatrix} \psi_{b1} \\ \psi_{b2} \end{pmatrix}.


.. admonition:: Other Initial Conditions
   :class: note

   The initial condition can be other convinient ones. For example we can remove the integration constant of the last term in the relation.

At any position/time, the wave function in background matter basis is

.. _matter-stimulated-equation-wavefunction-diff-basis:

.. math::
   \begin{pmatrix} \psi_1 (x) \\ \psi_2(x)  \end{pmatrix} = \begin{pmatrix} e^{- i \eta} \psi_{b1} (x) \\ e^{i\eta} \psi_{b2} (x)  \end{pmatrix}.
   :label: wavefunction-diff-basis

To calculated the transition from low energy state to high energy state in background matter basis, with initial condition

.. math::
   \begin{pmatrix} \psi_1 (0) \\ \psi_2(0)  \end{pmatrix} = \begin{pmatrix} 1 \\ 0  \end{pmatrix},

we simply calculate

.. math::
   P_{1 \to 2} (x) = \lvert e^{i\eta} \psi_{b2} (x)  \rvert^2 = \lvert \psi_{b2} (x)  \rvert^2 .





.. toctree::
   :maxdepth: 2

   scales.rst
   msw-revisted.rst
   parametric-resonance-revisted.rst
   single-frequency.rst
   two-frequency.rst
   multi-frequency.rst
   interference.rst
   flavor-isospin-matter.rst
   picture.rst
   linear-background-matter.rst






1. Patton, K. M., Kneller, J. P., & McLaughlin, G. C. (2014). Stimulated neutrino transformation through turbulence. Physical Review D, 89(7), 073022. doi:10.1103/PhysRevD.89.073022
2. Kneller, J. P., McLaughlin, G. C., & Patton, K. M. (2013). Stimulated neutrino transformation in supernovae. AIP Conference Proceedings, 1560, 176–178. doi:10.1063/1.4826746
