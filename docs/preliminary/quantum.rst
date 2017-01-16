Quantum Physics Basics
=========================



Two Level Systems
------------------


In general a quantum two level system can be described using Schrodinger equation

.. math::
   i\partial_t \begin{pmatrix}
   \psi_1\\
   \psi_2
   \end{pmatrix}= \frac{1}{2}
   \begin{pmatrix}
   -\omega_0 & 0 \\
   0 & \omega_0
   \end{pmatrix}
   \begin{pmatrix}
   \psi_1\\
   \psi_2
   \end{pmatrix},

where :math:`\omega_0` is real. We define the unperturbed Hamiltonian,

.. math::
   H_0 = \frac{1}{2}\begin{pmatrix}
   -\omega_0 & 0 \\
   0 & \omega_0
   \end{pmatrix}.

Introduce perturbation

.. math::
   W = \frac{1}{2}\begin{pmatrix}
   -\delta & w \\
   w* & \delta
   \end{pmatrix},

where and identity matrix could have been added to restore the actual potential field. The system Hamiltonian becomes

.. math::
   H =& \frac{1}{2}\begin{pmatrix}
   -\omega_0 - \delta & w \\
   w^* & \omega_0 +\delta
   \end{pmatrix} \\
   =& \frac{1}{2}\begin{pmatrix}
   -\omega & w \\
   w^* & \omega
   \end{pmatrix},

where :math:`\omega = \omega_0 +\delta` is called **detuning** and :math:`w` is the **Rabi frequency**. The Schrodinger equation can be solved which gives us the general solution

.. math::
   \begin{pmatrix}
   \psi_1 \\
   \psi_2
   \end{pmatrix} = C_+ e^{\lambda_+ t}\eta_+ + C_- e^{\lambda_- t} \eta_-,

where

.. math::
   \lambda_\pm =& \pm \frac{i}{2}\sqrt{w^2+\omega^2} \equiv \pm i \lambda_R\\
   \eta_\pm =& \begin{pmatrix}
   \frac{-\omega \pm \sqrt{w^2+\omega^2}}{w^*} \\
   1
   \end{pmatrix}.

.. admonition:: Rabi Frequency
   :class: warning

   Rabi frequency :math:`w` will be generalized to the generalized Rabi frequency

   .. math::
      R=\sqrt{\sqrt{w^2+\omega^2}},

   at which frequency the final system is oscillating.

We can determine the coefficients :math:`C_\pm` using initial condition. Suppose we have the system initially in state

.. math::
   \begin{pmatrix}
   1\\
   0
   \end{pmatrix}.

The coefficients are

.. math::
   C_\pm = \pm \frac{1}{2} \frac{w^*}{\sqrt{w^2+\omega^2}}.

The final solution is

.. math::
   \begin{pmatrix}
   \psi_1(t) \\
   \psi_2(t)
   \end{pmatrix} = \frac{w^*}{\sqrt{w^2+\omega^2}} \begin{pmatrix}
   -i\frac{\omega}{w^*} \sin(\lambda_R t) + \frac{\sqrt{\omega^2+w^2}}{w^*} \cos(\lambda_R t)\\
   i \sin(\lambda_R t)
   \end{pmatrix}.

The transition probability is

.. math::
   P_{1\to 2} =& \frac{w^2}{w^2+\omega^2} \sin^2(\lambda_R t)\\
   =&  \frac{w^2}{w^2+\omega^2} \sin^2 \left(\sqrt{w^2+\omega^2}/2 \right).


Energy Spectrum
~~~~~~~~~~~~~~~~~~


It's important to visualize the energy spectrum. The energy levels are in fact

.. math::
   E_\pm = \pm \lambda_R.

We notice that for zero off-diagonal perturbation :math:`w=0`, we have

.. math::
   E_\pm = \pm \omega,

which means the energy levels are linear to :math:`\omega`. At :math:`\omega=0` we have degeneracy of the two state, i.e., the two states have the same energy. However, as we introduce non-zero off-diagonal perturbation :math:`w\neq 0`, the degeneracy is gone. The crossing of the energies is avoided.



References of Rabi System
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1. A very short and concise introduction: ` Rabi Model <http://www.pa.msu.edu/~mmoore/Lect7_RabiModel.pdf>`_ by Michael G. Moore at MSU.
