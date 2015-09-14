Masses of Neutrinos
=====================



Neutrino masses are still not determined completely. However we have some possible patterns.

.. figure:: assets/massPatterns.png
   :align: center

   Source: http://projects.fnal.gov/nuss/lectures/RabiM_1.pdf



One of the questions we have about the masses of neutrinos is **the generation of it**.


.. note::
   This figure also gives the terms: normal hierarchy (NH) and invertd hierarchy (IH).


Lepton mixing matrix, can be written as the product of three matrices which stands for a rotation in 23, 13(with a CP phase), 12 respectively. This is called the PMNS mixing matrix.


.. math::
   \mathbf U &= \mathbf {U_{23}} \times \mathbf {U_{13,\delta}} \times \mathbf {U_{12}} \\
   & = \begin{pmatrix} 1 & 0 & 0 \\ 0 &\cos\theta_{23} & \sin\theta_{23} \\ 0 -\sin\theta_{23} & \cos\theta_{23} \end{pmatrix}  \begin{pmatrix} \cos\theta_{13} & 0 & e^{i\delta} \sin\theta_{13} \\ 0 & 1 & 0 \\ -e^{i\delta}\sin\theta_{13} & 0 & \cos\theta_{13}  \end{pmatrix} \begin{pmatrix} \cos\theta_{12} & \sin\theta_{12} & 0 \\ -\sin\theta_{12} & \cos \theta_{12} & 0 \\ 0 & 0 & 1 \end{pmatrix}



.. admonition:: Neutrino Mixing vs Quark Mixing
   :class: note

   In fact that quarks also has a mixing matrix that mixes the mass eigenstates to produce flavor states. But note that quarks has a mixing matrix of order

   .. math::
      V_{CKM}\sim \begin{pmatrix}
      1 & 0.2 & 0.005 \\
      0.2 & 1 & 0.04 \\
      0.005 & 0.04 & 1
      \end{pmatrix},

   while  neutrino has a mixing matrix of order

   .. math::
      U_{PMNS} \sim \begin{pmatrix}
      0.8 & 0.5 & ? \\
      0.4 & 0.6 & 0.7 \\
      0.4 & 0.6 & 0.7
      \end{pmatrix}.

   It is obvious that the mixing in neutrino is much larger than quark mixing.



Experiments
-----------------------------

The best fit values in 2014 for the angles in :math:`\pm 1\sigma` are

1. :math:`\sin^2\theta_{12}=0.307^{+ 0.018}_{-0.016}`
2. :math:`\sin^2\theta_{23} = 0.386^{+0.024}_{-0.021}`
3. :math:`0.0241\pm 0.0025`.




Majorana Particle
--------------------------


Dirac Equation
~~~~~~~~~~~~~~~~~~

Dirac equation can be derived by using the fact that :math:`E^2=p^2+m^2` and insisting that the equation should be linear. We start from the assumption

.. math::
   i\partial_t \Psi = (\vec\alpha\cdot \vec p + \beta m)\Psi,

where :math:`\alpha` and :math:`\beta` are NOT necessarily complex numbers. The right side is the energy which comes from the fact that energy operator is :math:`\hat{E} = i\hbar\frac{\partial}{\partial t} \,\!`.

As we require the energy term satisfy :math:`E^2=p^2+m^2`, what we have from the assumption is

.. math::
   (\vec\alpha\cdot \vec p + \beta m)(\vec\alpha\cdot \vec p + \beta m) \equiv p^2 + m^2.

Expand the expression we get the requirements for :math:`\vec\alpha` and :math:`\beta`,

.. math::
   \vec\alpha\cdot\vec \alpha &= 1, \\
   \{\alpha_i,\alpha_j\} &= 0 \qquad \text{when i\neq j}, \\
   \{\alpha_i,\beta \} & = 0 ,\\
   \beta^2 & = 1.


.. admonition:: Hint
   :class: note

   Use the component form to derive the requirements.


.. admonition:: Quaternion
   :class: note

   A quaternin is a quantity that can be written as a matrix of the form

   .. math::
      q = \begin{pmatrix}\;z & w \\ -w^* & \;z^*\end{pmatrix}.

   As comparison, a complex number can be written as

   .. math::
      C = \begin{pmatrix}\;\; a &   b  \\- b &  a
      \end{pmatrix},

   where a and b are real. So quaternion is a generalization of complex number. An important fact is a quaternion times its hermitian conjugate gives us its modulus times an identity, i.e.,

   .. math::
      q^\dagger q= q q^\dagger = \| q \|^2 I.

   Is it useful for Dirac equation?



These are the most general requirements, any quantities that satisfy the four requirements would do the work.

In fact we have three different representations if we assume :math:`\vec\alpha` and :math:`\beta` are matrices. They are Dirac-Pauli representation, Weyl representation and Majorana representation.


.. admonition:: Three representations
   :class: note

   * Dirac-Pauli representation

   The :math:`\vec\alpha` and :math:`\beta` are

   .. math::
      \vec \alpha &= \begin{pmatrix} 0 & \vec \sigma \\ \vec\sigma & 0 \end{pmatrix}, \\
      \beta & = \begin{pmatrix} I & 0 \\ 0 & -I \end{pmatrix}.

   The gamma matrices are

   .. math::
      \gamma^0 & = \begin{pmatrix} I & 0 \\ 0 & -I  \end{pmatrix}, \\
      \gamma^i & = \begin{pmatrix} 0 & \sigma^i \\ -\sigma^i & 0 \end{pmatrix}, \\
      \gamma^5 & = \begin{pmatrix} 0 & I \\ I & 0 \end{pmatrix}.


   Correspondingly, the chirality operator :math:`P_{R(+)/L(-)} = \frac{1}{2}(1\pm \gamma^5)` is

   .. math::
      P_{L(-)} &=\frac{1}{2} \begin{pmatrix} I & 0 \\ 0 & I  \end{pmatrix},\\
      P_{R(+)} & = \frac{1}{2} \begin{pmatrix} I & I  \\ I & I \end{pmatrix}.


   * Weyl representation


   The :math:`\vec\alpha` and :math:`\beta` are

   .. math::
      \vec \alpha &= \begin{pmatrix} -\vec \sigma & 0 \\  0 & \vec\sigma  \end{pmatrix}, \\
      \beta & = \begin{pmatrix} 0 & I \\ I & 0 \end{pmatrix}.

   The gamma matrices are

   .. math::
      \gamma^0 & = \begin{pmatrix} 0 & I \\ I & 0  \end{pmatrix}, \\
      \gamma^i & = \begin{pmatrix} 0 & \sigma^i \\ -\sigma^i & 0 \end{pmatrix}, \\
      \gamma^5 & = \begin{pmatrix} -I & 0 \\ 0 & I \end{pmatrix}.


   Correspondingly, the chirality operator :math:`P_{R(+)/L(-)} = \frac{1}{2}(1\pm \gamma^5)` is

   .. math::
      P_{L(-)} &=\frac{1}{2} \begin{pmatrix} I & 0 \\ 0 & 0  \end{pmatrix},\\
      P_{R(+)} & = \frac{1}{2} \begin{pmatrix} 0 & 0  \\  0 & I \end{pmatrix}.


   In this representation the Dirac equation is

   .. math::
      (i\partial_t - \vec p \cdot \vec \sigma) \Psi_R - m_D\Psi_L &= 0, \\
      (i\partial_t + \vec p \cdot \vec \sigma) \Psi_L - m_D\Psi_R &= 0.

   where we assumed that

   .. math::
      \Psi = \begin{pmatrix}  \Psi_R \\ \Psi_L \end{pmatrix}.


   * Majorana representation



   The gamma matrices are

   .. math::
      \gamma^0 & = \begin{pmatrix} 0 & \sigma^2 \\ \sigma^2 & 0  \end{pmatrix}, \\
      \gamma^1 & = \begin{pmatrix} i\sigma^3 & 0 \\ 0 & i \sigma^3  \end{pmatrix}, \\
      \gamma^2 & = \begin{pmatrix} 0 & - \sigma^2 \\ \sigma^2 & 0   \end{pmatrix}, \\
      \gamma^3 & = \begin{pmatrix} -i\sigma^1 & 0 \\ 0 & -i\sigma^1 \end{pmatrix}, \\
      \gamma^5 & = \begin{pmatrix} \sigma^2 & 0 \\ 0 & -\sigma^2 \end{pmatrix}.


   The chirality operator :math:`P_{R(+)/L(-)} = \frac{1}{2}(1\pm \gamma^5)` won't simplify.


Dirac equation in D-P rep. is

.. math::
   (i\partial_t - \vec p \cdot \vec \sigma) \Psi_R - m_D\Psi_L &= 0, \\
   (i\partial_t + \vec p \cdot \vec \sigma) \Psi_L - m_D\Psi_R &= 0.

where we use that fact the a state is

.. math::
   \Psi = \begin{pmatrix}  \Psi_R \\ \Psi_L \end{pmatrix}.

.. admonition:: Charge conjugation
   :class: note

   Charge conjugation can be identified by comparing the equations for a electron and a position. Just plugin the canonical momentum for the four momentum in free Dirac equation. (In Halzen & Martin section 5.4.) We require that a charge conjugation of a state is

   .. math::
      \Psi_C = C\gamma^0\Psi^* = C \bar\Psi^T,

   where :math:`C` is a matrix and :math:`{}^T` is transposition.

   In both D-P and Weyl rep., we have (Halzen & Martin, excerse 5.6)

   .. math::
      C\gamma^0 = i\gamma^2.

   However, in Majorana basis, we have

   .. math::
      C\gamma^0 = I.




However, in Majorana basis we can show that the two possible states are in the form

.. math::
   \Psi_L &= \begin{pmatrix} - i \sigma^2 \psi_L^* \\ \psi_L  \end{pmatrix}, \\
   \Psi_R & = \begin{pmatrix} \psi_R \\ i\sigma^2\psi_R^* \end{pmatrix}.

The equations becomes

.. math::
   (i\partial_t -\vec p \cdot \vec \sigma) \psi_R - i m_R \sigma^2 \psi_R^* &= 0, \\
   (i\partial_t + \vec p \cdot \vec \sigma) \psi_L - i m_L \sigma^2\psi_L^* & = 0.








See-saw Mechanism
------------------

RH neutrinos term in Lagrangian breaks the symmetry.
