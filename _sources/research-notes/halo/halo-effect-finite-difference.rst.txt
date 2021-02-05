Halo Effect - Finite Difference
=================================


Models
------------------------

.. admonition:: Some Seasoning
   :class: note

   - [ ] Add in anti-neutrinos to the beams
   - [ ] Neutrino and anti-neutrino beams are in different directions



Toy Model
~~~~~~~~~~~~~~~~~

The toy model we use is neutrino-only, right forward beam and reflection.

For single angle neutrino-only emission, this model can also work for the tilted emission simply by rescale the neutrino self-interaction by :math:`\cos\alpha` where :math:`\alpha` the angle of forward and backward beams.



Antineutrinos or Spectrum
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


The simple model would be two beams model with left and right beams having different energies.






Model with Collective Oscillations
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


Introduce multiangles and left-right asymmetries to the system.




Numerical - State Convention
---------------------------------

We use traceless density matrix. There are two senarios to keep track of the elements.

Convention I Used in Code
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

For any tracelesstwo by two matrix with real diagonal elements such as density matrix,

.. math::
   \rho = \begin{pmatrix}
   a & b + i c\\
   b - i c & -a
   \end{pmatrix}


we define a corresponding array `s = { a, b ,c }`. Then the density matrix is

.. math::
   \rho = \begin{pmatrix}
   s[0] & s[1] + i s[2] \\
   s[1] - i s[2] & -s[0]
   \end{pmatrix}.




Convention II: Polarization Vector
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


Polarization vector :math:`\vec P` is

.. math::
   \rho = 1 + \vec \sigma \cdot \vec P,

so that `\vec P = { b, -c , a }`.


.. admonition:: Relation to My Previous Convention I
   :class: toggle

   It is related to my convention I by

   .. code-block:: c++

      P[0] = s[1]
      P[1] = -s[2]
      P[2] = s[0]




Numerical - Stepper Senario
-----------------------------------



Euler Method
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

We start from the equation of motion

.. math::
   i\partial_z \rho = \left[ H, \rho \right],

where we denote

.. math::
   \rho &= \begin{pmatrix}
   a & b + i c\\
   b - i c & -a
   \end{pmatrix} \\
   H & = \begin{pmatrix}
   h & \bar h + i \tilde h\\
   \bar h - i\tilde h & - h
   \end{pmatrix}.


Calcuation of the commutator shows that

.. math::
   \left[ H ,\rho\right] = 2 \begin{pmatrix}
   i( \tilde h b - \bar h c) & b h - a \bar h + i( h c - a \tilde h) \\
   c.c. &  - i( \tilde h b - \bar h c)
   \end{pmatrix},

from which we conclude that

.. math::
   \partial_z a &= 2 ( \tilde h b - \bar h c ) \\
   \partial_z b &= 2 ( h c - a \tilde h ) \\
   \partial_z c &= 2 ( h b - a \bar h ).

Then we discretize each equations using Euler method.




Evolution Operator
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


The same calculation can be achieved by using the evolution operator :math:`U(t) = \exp (-i H t)`.

.. admonition:: Evolution Operator
   :class: note

   Evolution operator :math:`U(t)` is used to evolve states

   .. math::
      \rho(t) = U(t)\rho(t_0) U(t)^\dagger

   if Hamiltonian doesn't depend on time.

   As a numerical algorithm, we can use the finite difference form

   .. math::
      \rho(t+\Delta t) = U(\Delta t) \rho(t)  U(\Delta t)^\dagger.


Since the Hamiltonian in our simple calcuations is always two by two, the exact form of the algorithm can be written down exactly.

The evolution operator itself is

.. math::
   U(\Delta t) = \begin{pmatrix}
   \cos (h \Delta t) - i\frac{h_3 \sin( h \Delta t) }{ h } & \frac{ -i( h_1 + i h_2 ) \sin ( h \Delta t ) }{  h } \\
   \frac{ -i( h_1 -i h_2) \sin ( h \Delta t ) }{  h } &  \cos (h \Delta t) + i\frac{h_3 \sin( h \Delta t) }{ h }
   \end{pmatrix}

where we defined :math:`h = \sqrt{ h_1^2+h_2^2+h_3^2 }` for short.


To obtain a simpler form, we can write all matrices as Pauli matrices.

.. math::
   U &= \cos(h \Delta t) I  -i \frac{ h_1 \sin(h \Delta t) }{h} \sigma_1 + i \frac{ h_2\sin(h \Delta t) }{h} \sigma_2- i \frac{ h_3 \sin(h \Delta t) }{ h} \sigma_3 \\
   & = u_0 I + u_1 \sigma_1 + u_2 \sigma_2 + u_3 \sigma_3.

For the purpose of formalism, we denote density matrix as :math:`\rho = P_i \sigma_i`. The density matrix at :math:`t+\Delta t` is

.. math::
   \rho(t+\Delta t) &= U_t(\Delta t) \rho(t) U_t^\dagger(\Delta t) \\
   &= ( cI +  u_i \sigma_i ) \rho_k \sigma_k ( c I -  u_j \sigma_j ) \\
   &= c^2 \rho_k \sigma_k + \left[ u_i u_i \rho_n - 2 u_i \rho_i u_n \right]\sigma_n \\
   & = \left[  (c^2 - s^2 )\rho_n - 2 u_i \rho_i u_n \right]\sigma_n,

where :math:`c=\cos( h \Delta t )`, :math:`s = \sin(h\Delta t)`, :math:`u_{1,3} =-i h_{1,3}/h`, :math:`u_2 = i h_2/h`, and :math:`h=\sqrt{h_1^2 + h_2^2 + h_3^2}`. The equation is simplified if we redefine

.. math::
   u_1 &= -i \sin(h\Delta t) u_1' \\
   u_2 &= -i \sin(h\Delta t) u_2' \\
   u_3 &= -i \sin(h\Delta t) u_3'.

Then we obtain the equation

.. math::
   \rho(t+\Delta t) &= \left[  \cos( 2 h \Delta t)\rho_n -  2 u_i \rho_i u_n \right]\sigma_n \\
   &= \left[  \cos( 2 h \Delta t) \rho_n +  2 \sin^2(h \Delta t) u'_i \rho_i u'_n \right]\sigma_n



.. admonition:: The Code
   :class: toggle

   The vectors about h is consistent with my code. But the state vector I calculated is different. The actual update rule should be

   .. math::
      \rho(t+\Delta t)[0] &= \cos( 2 h \Delta t) \rho[0] +  2 \sin^2(h \Delta t) u'_i \rho_i u'[0] \\





.. admonition:: The Tedious Result Using Mathematica
   :class: toggle

   **For my previous Convention I.**

   The evolved density matrix obtained quite a long expression but it definitely can be implemented.

   .. math::
      \rho(t + \Delta t) = \left(
      \begin{array}{cc}
      \frac{\text{h0} (\text{h0} \text{s0}+\text{h1} \text{s1}+\text{h2} \text{s2})+\left(\text{s0} \text{h1}^2-\text{h0} \text{s1} \text{h1}+\text{h2} (\text{h2} \text{s0}-\text{h0} \text{s2})\right) \cos \left(2 \text{dt} \sqrt{\text{h0}^2+\text{h1}^2+\text{h2}^2}\right)+(\text{h2} \text{s1}-\text{h1} \text{s2}) \sin \left(2 \text{dt} \sqrt{\text{h0}^2+\text{h1}^2+\text{h2}^2}\right) \sqrt{\text{h0}^2+\text{h1}^2+\text{h2}^2}}{\text{h0}^2+\text{h1}^2+\text{h2}^2} & \frac{(\text{h1}+\text{h2} i) (\text{h0} \text{s0}+\text{h1} \text{s1}+\text{h2} \text{s2})+\left((\text{s1}+i \text{s2}) \text{h0}^2-\text{h0} (\text{h1}+\text{h2} i) \text{s0}+(\text{h1}+\text{h2} i) i (\text{h1} \text{s2}-\text{h2} \text{s1})\right) \cos \left(2 \text{dt} \sqrt{\text{h0}^2+\text{h1}^2+\text{h2}^2}\right)+(-\text{h2} \text{s0}+\text{h1} i \text{s0}-i \text{h0} \text{s1}+\text{h0} \text{s2}) \sin \left(2 \text{dt} \sqrt{\text{h0}^2+\text{h1}^2+\text{h2}^2}\right) \sqrt{\text{h0}^2+\text{h1}^2+\text{h2}^2}}{\text{h0}^2+\text{h1}^2+\text{h2}^2} \\
      (\text{s1}-i \text{s2}) \cos ^2\left(\text{dt} \sqrt{\text{h0}^2+\text{h1}^2+\text{h2}^2}\right)+\frac{\left(-(\text{s1}-i \text{s2}) \text{h0}^2+2 (\text{h1}-i \text{h2}) \text{s0} \text{h0}+(\text{h1}-i \text{h2})^2 (\text{s1}+i \text{s2})\right) \sin ^2\left(\text{dt} \sqrt{\text{h0}^2+\text{h1}^2+\text{h2}^2}\right)}{\text{h0}^2+\text{h1}^2+\text{h2}^2}+\frac{(-\text{h2} \text{s0}+\text{h1} (-i) \text{s0}+\text{h0} i \text{s1}+\text{h0} \text{s2}) \sin \left(2 \text{dt} \sqrt{\text{h0}^2+\text{h1}^2+\text{h2}^2}\right)}{\sqrt{\text{h0}^2+\text{h1}^2+\text{h2}^2}} & \frac{-\text{h0} (\text{h0} \text{s0}+\text{h1} \text{s1}+\text{h2} \text{s2})+\left(\text{h0} \text{s1} \text{h1}-\text{h1}^2 \text{s0}+\text{h2} (\text{h0} \text{s2}-\text{h2} \text{s0})\right) \cos \left(2 \text{dt} \sqrt{\text{h0}^2+\text{h1}^2+\text{h2}^2}\right)+(\text{h1} \text{s2}-\text{h2} \text{s1}) \sin \left(2 \text{dt} \sqrt{\text{h0}^2+\text{h1}^2+\text{h2}^2}\right) \sqrt{\text{h0}^2+\text{h1}^2+\text{h2}^2}}{\text{h0}^2+\text{h1}^2+\text{h2}^2} \\
      \end{array}
      \right)





.. admonition:: First Order Expansion
   :class: note

   We could Taylor series of the evolution operator,

   .. math::
      U = 1 - i H(t) \Delta t.

   We work out the evolved density matrix.





Numerical - Iteration Senario
-----------------------------------





Single Neutrino Forward then Backward
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. admonition:: Algrimth
   :class: note

   1. Calculate forward beam using 0 backward beam;
   2. Calculate backward beam using forward beam calculated in 1;
   3. Calculate forward beam using backward beam calculated in 2;
   4. Repeat.


Single Neutrino Simultaneous
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. admonition:: Algrimth
   :class: note

   1. Calculate forward beam using 0 backward beam;
   2. Calculate backward beam and forward beam together using all current counter beams;
   3. Repeat.


.. admonition:: Computation Time
   :class: toggle

   **2017-09-13:**

   The export of my test code:

   .. code-block:: txt

      PROGRAM START
      Halo Problem Forward and Backward:
      Total number of iterations: 100
      Size of rhos: 1000
      Range: 1.000000
      Step size: 0.001000
      Save Steps: 2
      Total clock time: 0.070386
      Clock time for 1000 iterations: 0.70409
      PROGRAM END

   Some estimations:

   1. (1e5 steps in z) times (10000) steps requires (10000 times 7e-4 times 100 = 700) seconds;
   2. (1e6 steps in z) times (10000) steps requires (10000 times 7e-4 times 1000 = 7000 ) seconds, i.e., 117 minutes;
   3. (1e7 steps in z) times (10000) steps requires (10000 times 7e-4 times 10000 = 70000 ) seconds, i.e., 1e3 minutes.


   **2017-09-14:** I changed the Hamiltonian functions and solvers.

   .. code-block:: txt

      PROGRAM START
      Halo Problem Forward and Backward:
      Total number of iterations: 100
      Size of rhos: 1000
      Range: 1.000000
      Step size: 0.001000
      Save Steps: 2
      Total clock time: 0.018305
      Clock time for 1000 iterations: 0.18335
      PROGRAM END

   3.5 times faster!



The result shows that


.. raw:: html

   <video width="100%" controls>
   <source src="../_static/assets/halo/halo-effect-finite-difference/halo_sim_osc_20000_100000_1.000000_0.000010.csv.mp4" type="video/mp4">
   Your browser does not support HTML5 video.
   </video>
   <p class="caption">For 20000 total iteractions. Calculation is within range 0 to 1 with step size 1e-5. A total of 100 steps are exported. So each step indicates iteration of 200 times.</p>

.. admonition:: GIF: Step size :math:`10^{-5}`
   :class: toggle

   .. figure:: assets/halo-effect-finite-difference/halo_sim_osc_20000_100000_1.000000_0.000010.csv.gif
      :align: center

      For 20000 iteractions within range 0 to 1 with 100 outputs. Each time increment in the plot indicates 200 iterations.


We immediately spot trouble here. The calculation doesn't reach equilibrium. I calculated using larger iterations (100000 iterations) and it doesn't converge either.


I checked the convergence.


.. raw:: html

   <video width="100%" controls>
   <source src="../_static/assets/halo/halo-effect-finite-difference/convergence-1e4-and-1e5.mp4" type="video/mp4">
   Your browser does not support HTML5 video.
   </video>
   <p class="caption">Comparing step size 1e-4 and 1e-5, with Ntop = 20000 total iterations and 20 outputs. Each time increment in the plot indicates 20000/20=1000 iterations. </p>



Compare step sizes :math:`10^{-5}` and :math:`10^{-6}`.

.. raw:: html

   <video width="100%" controls>
   <source src="../_static/assets/halo/halo-effect-finite-difference/convergence-1e6-and-1e5.mp4" type="video/mp4">
   Your browser does not support HTML5 video.
   </video>
   <p class="caption">Comparing step size 1e-6 and 1e-5, with Ntop = 20000 total iterations and 20 outputs. Each time increment in the plot indicates 20000/20=1000 iterations. </p>


.. admonition:: What to do?
   :class: warning

   The first thing to do is to optimize the code and check the performance of this code. It might need more time, otherwise this would be physically important. We have to solve the time dependent problem by tracking all the neutrinos.

   1. Parallelize the code.
   2. Read about what the mathematicians are using to solve **BVP with nonlocal boundary conditions**. Refer to :ref:`BVP nonlocal BC <bvp-nonlocal-bc-references>`.
   3. Try to calculate multiangles to check if the convergence is easier to reach. What are the conditions of equilibrium?
   4. Write the time dependent code, with tracks all the neutrinos at different locations and solve it. This would be the actual time evolution of the flavors. The time scale would be on ms. Will this be useful?


.. admonition:: TODO
   :class: warning

   1. Linear stability analysis.



Verify Results
--------------------------------------------


The equilibrium results can be verified using Mathematica solver. I simply feed in the initial conditions at :math:`z=0` and calculate forward to the reflection surace at :math:`z=L`. The two neutrino beams should be at the same state.


Result is verified using Mathematica code.

.. figure:: assets/halo-effect-finite-difference/cpp-code-validation-using-mathematica.png
   :align: center

   C++ code validation using mathematica for :math:`\mu=20`.


Damping in Time
------------------------------------------

.. admonition:: The Problem
   :class: note

   The problem I encountered is that some of the calculations show that approaching to equilibrium can be extremely slow due to some kind of oscillation behavior.

   .. raw:: html

      <video width="100%" controls>
      <source src="../_static/assets/halo/halo-effect-finite-difference/halo_parallel_REFL0.200000_ITER10000000_STEPS50000_RANGE5.000000_TH_20_t2017-11-5-17-59-36.csv.mp4" type="video/mp4">
      Your browser does not support HTML5 video.
      </video>
      <p class="caption"> The system is kind of oscillatory in time. Reflection coefficient refl=0.2, mu = 1.0, within z range [0,5]. </p>


Average the past two steps to slow down the time evolution. Maybe it can prevent the oscillations in time.

The average algorithm takes on parameter :math:`\alpha`,

.. math::
   \rho(t_{n-1}) = (1-\alpha)\rho(t_{n-1}) + \alpha \rho(t_{n-2}).

I can verify that the code is producing the correct results by setting :math:`\alpha=0` and compare the result with my previous code. They are producing exact the same results.

.. raw:: html

   <video width="100%" controls>
   <source src="../_static/assets/halo/halo-effect-finite-difference/damping-method-mu-0.1-refl-0.01-average-alpha-0-no-average.mp4" type="video/mp4">
   Your browser does not support HTML5 video.
   </video>
   <p class="caption">Comparing damping method with alpha=0 (effectively no damping) and original code (without damping) for neutrino potential mu =0.1 and reflection coefficient refl=0.01  </p>

I also verified that the final equilibrium states produced by new code with damping and the original code without damping are the same.

.. image:: assets/halo-effect-finite-difference/neutrino-headon-avg1-alpha-0p5-vs-noavg-refl0p01-mu-p1.png
   :width: 49%
.. image:: assets/halo-effect-finite-difference/neutrino-headon-avg1-alpha-0p5-vs-noavg-refl0p1-mu0p1.png
   :width: 49%
.. image:: assets/halo-effect-finite-difference/neutrino-headon-avg1-alpha-0p5-vs-noavg-refl0p01-mu1.png
   :width: 49%
.. image:: assets/halo-effect-finite-difference/neutrino-headon-avg1-alpha-0p5-vs-noavg-refl0p1-mu1.png
   :width: 49%


However, the new algoritm seems to be slow. It's expected though.


.. raw:: html

   <video width="100%" controls>
   <source src="../_static/assets/halo/halo-effect-finite-difference/damping-method-mu-0.1-refl-0.1-average-alpha-0.5-no-average.mp4" type="video/mp4">
   Your browser does not support HTML5 video.
   </video>
   <p class="caption">Comparing damping method with alpha=0.5 and no damping for neutrino potential mu =0.1 and reflection coefficient refl=0.1  </p>

.. raw:: html

   <video width="100%" controls>
   <source src="../_static/assets/halo/halo-effect-finite-difference/damping-method-mu-0.1-refl-0.01-average-alpha-0.5-no-average.mp4" type="video/mp4">
   Your browser does not support HTML5 video.
   </video>
   <p class="caption">Comparing damping method with alpha=0.5 and no damping for neutrino potential mu =0.1 and reflection coefficient refl=0.01  </p>


.. raw:: html

   <video width="100%" controls>
   <source src="../_static/assets/halo/halo-effect-finite-difference/damping-method-mu-1-refl-0.1-average-alpha-0.5-no-average.mp4" type="video/mp4">
   Your browser does not support HTML5 video.
   </video>
   <p class="caption">Comparing damping method with alpha=0.5 and no damping for neutrino potential mu =1.0 and reflection coefficient refl=0.1  </p>


.. raw:: html

   <video width="100%" controls>
   <source src="../_static/assets/halo/halo-effect-finite-difference/damping-method-mu-1-refl-0.01-average-alpha-0.5-no-average.mp4" type="video/mp4">
   Your browser does not support HTML5 video.
   </video>
   <p class="caption">Comparing damping method with alpha=0.5 and no damping for neutrino potential mu =1.0 and reflection coefficient refl=0.01  </p>




To make use of this new damping mechanism, I need to recalculate

```
refl = 0.2
mu = 1.0
range = 5
```

Varying Parameters
---------------------------------------

.. figure:: assets/halo-effect-finite-difference/varying-relf-for-mu-1.png
   :align: center

   Fix :math:`\mu=1`


.. figure:: assets/halo-effect-finite-difference/varying-relf-for-mu-0.5.png
   :align: center

   Fix :math:`\mu=0.5`


.. figure:: assets/halo-effect-finite-difference/varying-relf-for-mu-0.1.png
   :align: center

   Fix :math:`\mu=0.1`

References and Notes
---------------------------------
