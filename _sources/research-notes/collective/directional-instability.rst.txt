Directional Instability
===========================

.. admonition:: Conventions
   :class: hint

   We use the metric

   .. math::
      \eta \to \mathrm{diag}(+,-,-,-).

From the paper by [Izaguirre2016]_, we notice that dispersion relation is related to the direction of 'flavor wave vector'.

In this section, we explore the possible significance of the directional instability.

.. [Izaguirre2016] Izaguirre, I., Raffelt, G., & Tamborra, I. (2016). `Fast Pairwise Conversion of Supernova Neutrinos: Dispersion-Relation Approach <http://arxiv.org/abs/1610.01612>`_, 1–6.


Formalism
----------------------

.. admonition:: What does the EoM Describe?
   :class: warning

   The equation of motion that describe the flavor transition is not really the equation of motion that describes the dynamics or kinematics of neutrino itself.

   It rather describes the 'wave of flavor content'.

   However, the problem is that the velocity/momentum should be that of neutrinos. How to reconcile?

To implement the idea of dispersion relation, we need the EoM

.. math::
   i\frac{d}{dt}\rho = [H,\rho],

where

.. math::
   \frac{d}{dt} = \partial_t + \mathbf v^{\mathrm T} \cdot \boldsymbol \nabla.

The equation of motion for :ref:`two beams model <two-beams-model>` is

.. math::
   i (\partial_t+\mathbf v^{\mathrm T}\cdot\boldsymbol\nabla) \begin{pmatrix}
   \epsilon_1 \\
   \epsilon_2
   \end{pmatrix} =
   \frac{1}{2}\begin{pmatrix}
   (\lambda+ \mu_2 - \eta \omega_1 - \mu_2 \cos(\theta_1-\theta_2) ) & -\mu_2 (1-\cos(\theta_1-\theta_2)) \\
   -\mu_1 (1- \cos(\theta_1-\theta_2)) & (\lambda + \mu_1 - \eta \omega_2 - \mu_1 \cos(\theta_1-\theta_2) )
   \end{pmatrix}\begin{pmatrix}
   \epsilon_1 \\
   \epsilon_2
   \end{pmatrix}.
   :label: eqn-line-model-two-beams-linearized-eom-liouville

.. admonition:: Caveat of Notations
   :class: warning

   One has to notice that this notation is retarded in linearized equation. The velocity is in fact different for different beams. But for simplicity we keep it here. Please do NOT use this notion for linearized equation in any formal writings.

   The term

   .. math::
      i (\partial_t+\mathbf v^{\mathrm T}\cdot\boldsymbol\nabla) \begin{pmatrix}
      \epsilon_1 \\
      \epsilon_2
      \end{pmatrix}

   is actually

   .. math::
      i\begin{pmatrix}
      (\partial_t+\mathbf v_1^{\mathrm T}\cdot\boldsymbol\nabla) \epsilon_1 \\
      (\partial_t+\mathbf v_2^{\mathrm T}\cdot\boldsymbol\nabla) \epsilon_2
      \end{pmatrix}

Then we Fourier transform the perturbations :math:`\begin{pmatrix}\epsilon_1 &  \epsilon_2\end{pmatrix}^{\mathrm T}`,

.. math::
   \begin{pmatrix}
   \epsilon_1 \\
   \epsilon_2
   \end{pmatrix} = \int d\Omega\int d^2 k \mathbf Q(\Omega,\mathbf k) e^{-i(\Omega t- \mathbf k \cdot \mathbf r)},

where

.. math::
   \mathbf Q = \begin{pmatrix}
   Q_1 \\
   Q_2
   \end{pmatrix}.

Eq. :eq:`eqn-line-model-two-beams-linearized-eom-liouville` becomes

.. math::
   (\Omega - \mathbf v^{\mathrm T}\cdot \mathbf k)\begin{pmatrix}
   Q_1 \\
   Q_2
   \end{pmatrix} =
   \frac{1}{2}\begin{pmatrix}
   (\lambda+ \mu_2 - \eta \omega_1 - \mu_2 \cos(\theta_1-\theta_2) ) & -\mu_2 (1-\cos(\theta_1-\theta_2)) \\
   -\mu_1 (1- \cos(\theta_1-\theta_2)) & (\lambda + \mu_1 - \eta \omega_2 - \mu_1 \cos(\theta_1-\theta_2) )
   \end{pmatrix}\begin{pmatrix}
   Q_1 \\
   Q_2
   \end{pmatrix}.

Define four velocity

.. math::
   u^\mu\to(1, \mathbf v)

and the four wave vector

.. math::
   k^\mu\to(\Omega, \mathbf k).


For the two dimensional geometry we have been discussing,

.. math::
   \Omega - \mathbf v^{\mathrm T}\cdot \mathbf k = \Omega- v_x k_x -v_z k_z.



.. admonition:: Proceed?
   :class: hint

   The analysis following this equation becomes rather tricky. What kind of instability are we interested in? We could, in principle, solve the instability for time domain, which means :math:`\Omega` has positive imaginary part. We could also solve the instability in z direction, which corresponds to :math:`k_z` has negative imaginary part. Beware that these are related the eigenvalues of the matrix though a sign and some constant.


What if we are interested in the instabilities in an arbitrary direction? Assume the direction we are interested in is

.. math::
   \mathbf k'\to \begin{pmatrix}
   k_1\\
   k_2
   \end{pmatrix} = \begin{pmatrix}
   \cos\gamma & \sin\gamma\\
   -\sin\gamma & \cos\gamma
   \end{pmatrix}\begin{pmatrix}
   k_x\\
   k_y
   \end{pmatrix}.

We plug this relation into the linearized equation

.. math::
   (\Omega-\mathbf v^{\mathrm T}\mathbf R^{\mathrm T} \mathbf k')\begin{pmatrix}
   Q_1 \\
   Q_2
   \end{pmatrix} =
   \frac{1}{2}\begin{pmatrix}
   (\lambda+ \mu_2 - \eta \omega_1 - \mu_2 \cos(\theta_1-\theta_2) ) & -\mu_2 (1-\cos(\theta_1-\theta_2)) \\
   -\mu_1 (1- \cos(\theta_1-\theta_2)) & (\lambda + \mu_1 - \eta \omega_2 - \mu_1 \cos(\theta_1-\theta_2) )
   \end{pmatrix}\begin{pmatrix}
   Q_1 \\
   Q_2
   \end{pmatrix},

where

.. math::
   \mathbf R =\begin{pmatrix}
   \cos\gamma & \sin\gamma\\
   -\sin\gamma & \cos\gamma
   \end{pmatrix}.

We can define velocity vector in new basis

.. math::
   \mathbf v' \equiv \begin{pmatrix}
   v_1 \\
   v_2
   \end{pmatrix} = \begin{pmatrix}
   \cos\gamma & \sin\gamma\\
   -\sin\gamma & \cos\gamma
   \end{pmatrix}\begin{pmatrix}
   v_x \\
   v_z
   \end{pmatrix}
   :label: eqn-new-velocity-with-rotation



Instability in Arbitrary Direction
------------------------------------------------

Suppose the direction we are interested in is :math:`k_2`, the equation becomes

.. math::
   k_2 \begin{pmatrix}
   v_{2,1} Q_1 \\
   v_{2,2} Q_2
   \end{pmatrix} =& - \Omega  \begin{pmatrix}
   Q_1 \\
   Q_2
   \end{pmatrix} + k_1 \begin{pmatrix}
   v_{1,1} Q_1 \\
   v_{1,2} Q_2
   \end{pmatrix} \\
   &+\frac{1}{2}\begin{pmatrix}
   (\lambda+ \mu_2 - \eta \omega_1 - \mu_2 \cos(\theta_1-\theta_2) ) & -\mu_2 (1-\cos(\theta_1-\theta_2)) \\
   -\mu_1 (1- \cos(\theta_1-\theta_2)) & (\lambda + \mu_1 - \eta \omega_2 - \mu_1 \cos(\theta_1-\theta_2) )
   \end{pmatrix}\begin{pmatrix}
   Q_1 \\
   Q_2
   \end{pmatrix},

where :math:`v_1` and :math:`v_2` is obtained from Eq. :eq:`eqn-new-velocity-with-rotation`

.. math::
   v_{1,i} =& \cos\gamma v_x + \sin\gamma v_z \\
   =& \cos\gamma \cos\theta_i + \sin\gamma \sin\theta_i \\
   =& \cos(\theta_i - \gamma)\\
   v_{2,i} =& -\sin\gamma v_x + \cos\gamma v_z \\
   =& -\sin\gamma \cos\theta_i + \cos\gamma \sin\theta_i\\
   =& \sin(\theta_i - \gamma),

where :math:`\theta_i` is the angle of the corresponding beam i, with angle define in :ref:`two beams model <two-beams-model>`.

We will define a new angle

.. math::
   \theta_i' = \theta_i - \gamma,

then the linearized equation will be similar to the one we have solved.

With the definition of the new beam angles, we have

.. math::
   v_{1,i} =& \cos \theta_i' \\
   v_{2,i} =& \sin \theta_i'.

The linearized equation can be rewritten into

.. math::
   -k_2 \begin{pmatrix}
   Q_1 \\
   Q_2
   \end{pmatrix} =& - \Omega \begin{pmatrix}
   1/v_{2,1} & 0 \\
   0 & 1/v_{2,2}
   \end{pmatrix}  \begin{pmatrix}
   Q_1 \\
   Q_2
   \end{pmatrix} + k_1 \begin{pmatrix}
   v_{1,1}/v_{2,1} & 0 \\
   0 & v_{1,2}/v_{2,2}
   \end{pmatrix} \begin{pmatrix}
   Q_1 \\
   Q_2
   \end{pmatrix} \\
   &+\frac{1}{2}\begin{pmatrix}
   (\lambda+ \mu_2 - \eta \omega_1 - \mu_2 \cos(\theta_1-\theta_2) )/v_{2,1}  & -\mu_2 (1-\cos(\theta_1-\theta_2))/v_{2,1}  \\
   -\mu_1 (1- \cos(\theta_1-\theta_2))/v_{2,2} & (\lambda + \mu_1 - \eta \omega_2 - \mu_1 \cos(\theta_1-\theta_2) )/v_{2,2}
   \end{pmatrix}\begin{pmatrix}
   Q_1 \\
   Q_2
   \end{pmatrix}.

Plug in the velocities

.. math::
   -k_2 \begin{pmatrix}
   Q_1 \\
   Q_2
   \end{pmatrix} =& - \Omega \begin{pmatrix}
   1/\sin\theta_1' & 0 \\
   0 & 1/\sin\theta_2'
   \end{pmatrix}  \begin{pmatrix}
   Q_1 \\
   Q_2
   \end{pmatrix} + k_1 \begin{pmatrix}
   \cos\theta_1'/\sin\theta_1' & 0 \\
   0 & \cos\theta_2'/\sin\theta_2'
   \end{pmatrix} \begin{pmatrix}
   Q_1 \\
   Q_2
   \end{pmatrix} \\
   &+\frac{1}{2}\begin{pmatrix}
   (\lambda+ \mu_2 - \eta \omega_1 - \mu_2 \cos(\theta_1-\theta_2) )/\sin\theta_1'  & -\mu_2 (1-\cos(\theta_1-\theta_2))/\sin\theta_1'  \\
   -\mu_1 (1- \cos(\theta_1-\theta_2))/\sin\theta_2' & (\lambda + \mu_1 - \eta \omega_2 - \mu_1 \cos(\theta_1-\theta_2) )/\sin\theta_2'
   \end{pmatrix}\begin{pmatrix}
   Q_1 \\
   Q_2
   \end{pmatrix}.
   :label: eqn-linearized-eom-k2-direction


We notice that

1. :math:`\Omega` is in the same position as :math:`\lambda`.
2. Though :math:`\theta_i\in [0,\pi/2]`, with the rotation, :math:`\theta_i` can be arbitrary. We could in principle have singularity in the terms :math:`1/\sin\theta_i'`. This is quite interesting because we can delibrately remove one of the beams by make the other one's effective angle close to 0 or Pi.


.. admonition:: Singularities?
   :class: note

   In fact it's such a bad idea to divide on both sides :math:`\sin\theta_i'`. The singularities comes from this shitty move. What I prefer is to rewrite the linearized equation into

   .. math::
      \begin{pmatrix}
      \Omega - k_1\cos\theta_1' - k_2 \sin\theta_1' & 0\\
      0 & \Omega - k_1\cos\theta_2' - k_2 \sin\theta_2'
      \end{pmatrix}\begin{pmatrix}
      Q_1 \\
      Q_2
      \end{pmatrix} =\frac{1}{2}\begin{pmatrix}
      (\lambda+ \mu_2 - \eta \omega_1 - \mu_2 \cos(\theta_1-\theta_2) )  & -\mu_2 (1-\cos(\theta_1-\theta_2))  \\
      -\mu_1 (1- \cos(\theta_1-\theta_2)) & (\lambda + \mu_1 - \eta \omega_2 - \mu_1 \cos(\theta_1-\theta_2) )
      \end{pmatrix}\begin{pmatrix}
      Q_1 \\
      Q_2
      \end{pmatrix}.
      :label: eqn-linearized-eom-k2-direction-non-singularity


Dispite the complexity, we assume that translational symmetry is found in direction :math:`k_1`, leaving only :math:`k_2` non zero. We solve the dispersion relation for Eq. :eq:`eqn-linearized-eom-k2-direction`.

Define

.. math::
   \bar\omega_i =& \lambda - \eta\omega_i\\
   \bar\mu_i =& \mu_i(1-\cos(\theta_1-\theta_2)).


Eq. :eq:`eqn-linearized-eom-k2-direction` becomes

.. math::
   k_2 \begin{pmatrix}
   Q_1 \\
   Q_2
   \end{pmatrix} =-\frac{1}{2}\begin{pmatrix}
   \frac{\bar\omega_1 + \bar\mu_2-2\Omega+2k_1\cos\theta_1'}{\sin\theta_1'} & -\frac{\bar\mu_2}{\sin\theta_1'} \\
   -\frac{\bar\mu_1}{\sin\theta_2'} & \frac{ \bar\omega_2+\bar\mu_1-2\Omega + 2k_1\cos\theta_2' }{\sin\theta_2'}
   \end{pmatrix}\begin{pmatrix}
   Q_1 \\
   Q_2
   \end{pmatrix}.

We find the relation between :math:`k_2`, :math:`k_1` and :math:`\Omega` by solving the following determinant.


.. math::
   \left| 2 k_2 \mathbf I +  \begin{pmatrix}
   \frac{\bar\omega_1 + \bar\mu_2-2\Omega+2k_1\cos\theta_1'}{\sin\theta_1'} & -\frac{\bar\mu_2}{\sin\theta_1'} \\
   -\frac{\bar\mu_1}{\sin\theta_2'} & \frac{ \bar\omega_2+\bar\mu_1-2\Omega + 2k_1\cos\theta_2' }{\sin\theta_2'}
   \end{pmatrix} \right| = 0,

which is in fact the dispersion relation

.. math::
   \left(2k_2 + \frac{\bar\omega_1 + \bar\mu_2 -2\Omega +2k_1\cos\theta_1'}{\sin\theta_1'} \right) \left( 2k_2 + \frac{\bar\omega_2+\bar\mu_1 - 2\Omega + 2k_1\cos\theta_1'}{\sin\theta_2'} \right) + \frac{\bar\mu_1\bar\mu_2}{\sin\theta_1'\sin\theta_2'} =0,

which is simplified

.. math::
   (2k_2\sin\theta_1'+ \bar\omega_1+\bar\mu_2-2\Omega+2k_1\cos\theta_1')(2k_2\sin\theta_2' + \bar\omega_2 + \bar\mu_1 -2\Omega+2k_1\cos\theta_2') + \bar\mu_1\bar\mu_2 = 0.


.. admonition:: Other Methods?
   :class: note

   Is is possible to find the dispersion relation starting from Eq. :eq:`eqn-linearized-eom-k2-direction-non-singularity`?

   Since :math:`\Omega` has no coefficient in this problem. We move it to the left and find the dispersion relation. In this case we do not have to deal with singularities and the demoninators. And the dispersion is simply the determinant of the matrix if we move everything to oneside.




We define

.. math::
   \bar\Omega_i = \Omega - k_1\cos\theta_i' - k_2\sin\theta_i'

so that

.. math::
   (\bar\omega_1 + \bar\mu_2 - 2\bar\Omega_1) (\bar\omega_2+\bar\mu_1 - 2\bar\Omega_2)+ \bar\mu_1\bar\mu_2=0,

which is a good form for programming.


We know that

.. math::
   \bar\Omega_1\bar\Omega_2=& \Omega^2 + k_1^2\cos\theta_1'\cos\theta_2' + k_2^2\sin\theta_1'\sin\theta_2' + k_1k_2\sin(\theta_1'+\theta_2')\\
   (\bar\omega_1+\bar\mu_2)\bar\Omega_1 + (\bar\omega_2+\bar\mu_1)\bar\Omega_2
   =& \Omega(\bar\omega_1+\bar\omega_2+\bar\mu_1+\bar\mu_2) \\
   &- k_1( (\bar\omega_1+\bar\mu_2)\cos\theta_2' + (\bar\omega_2+\bar\mu_1)\cos\theta_1' ) \\
   & -k_2((\bar\omega_1+\bar\mu_2)\sin\theta_2' + (\bar\omega_2+\bar\mu_1)\sin\theta_1').


To avoid super long equations, we define

.. math::
   A =& \bar\omega_1+\bar\omega_2+\bar\mu_1+\bar\mu_2\\
   B_c =& (\bar\omega_1+\bar\mu_2)\cos\theta_2' + (\bar\omega_2+\bar\mu_1)\cos\theta_1' \\
   B_s =& (\bar\omega_1+\bar\mu_2)\sin\theta_2' + (\bar\omega_2+\bar\mu_1)\sin\theta_1'\\
   c_i=&\cos\theta_i' \\
   s_i=& \sin\theta_i\\
   s_{i+j}=&\sin(\theta_i'+\theta_j').


The dispersion relation

.. math::
   4\Omega^2-2A\Omega+2c_1c_2k_1^2 + 2 B_c k_1 + 2s_1s_2 k_2^2 +2 B_s k_2 + 4s_{1+2}k_1k_2 + (\bar\omega_1+\bar\mu_2)(\bar\omega_2+\bar\mu_1) + \bar\mu_1\bar\mu_2 = 0.

This will be the equation for conic sections.


Phase Velocity and Solitary Waves
------------------------------------------------------------


.. admonition:: Solitary Waves in Neutrino Flavor Wave Propagation
   :class: note

   It seems that solitary waves can occur in neutrino flavor oscillations due to its non-linarity.


How to Understand Every Step of Raffelt's Paper
--------------------------------------------------------------


Make the formalism 4 dimensional.
