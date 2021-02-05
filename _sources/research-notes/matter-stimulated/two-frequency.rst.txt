Two-frequency Matter Perturbation
------------------------------------------------------------------


However, as we proceed to the more realistic matter profile, multi-frequency matter profiles are necessary. Generally, we choose the perturbation matter profile upon a constant background to be

.. math::
   \delta \lambda(x) = \sum_n A_n \sin (k_n x + \phi_n).

Using :ref:`definition <matter-stimulated-equation-eta-x-general>` of :math:`\eta` we conclude that

.. math::
   \eta(x) = - \frac{\omega_m}{2}x - \frac{\cos 2\theta_m}{2} \sum_n \frac{A_n}{k_n} \cos ( k_n x+ \phi_n ).

Hence we write down

.. math::
   h = \frac{\sin 2\theta_m}{2} \sum_a A_a \sin (k_a x + \phi_a) e^{-i\omega_m x}\prod_{a} \sum_{n=-\infty}^{\infty} (-i)^n J_n (z_{k_a}) e^{i n(k_a x + \phi_a) }



Two Frequencies
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


To work out the equation of motion that we could solve, we deal with two frequencies first,

.. math::
   \delta \lambda ( x ) = A_1\sin (k_1 x + \phi_1) + A_2 \sin (k_2 x + \phi_2),

while

.. math::
   h = \frac{\sin 2\theta_m}{2} \sum_{a = 1}^2 A_a \sin (k_a x + \phi_a) e^{-i\omega_m x}\prod_{a=1}^2 \sum_{n=-\infty}^{\infty} (-i)^n J_n (z_{k_a}) e^{i n(k_a x + \phi_a) }.


Rewrite Multiplication into Summation
`````````````````````````````````````````````````````````


.. admonition:: Summation Algebra
   :class: note

   A multiplication of two summations

   .. math::
      \sum_n a_n \sum_m b_m  = \sum_{N = -\infty}^{\infty} \sum_{m+n=N} a_n b_m = \sum_{N=-\infty}^\infty \sum_{n=-\infty}^{N} a_n b_{N-n}.
      :label: multiplication-summation-rule

   The rule is to sum over a line :math:`m+n=N` then sum over :math:`N`.


   .. figure:: assets/matter-stimulated/summation-algebra.svg
      :align: center

      Rewrite multiplication of summations into summations only.


The multiplication becomes


.. _two-frequency-equation-stimulated-multi-freq-hamiltonian-12-element:

.. math::
   h &= \frac{\sin 2\theta_m}{2} \sum_{a = 1}^2 A_a \sin (k_a x + \phi_a) e^{-i\omega_m x} \sum_{N=-\infty}^{\infty} \sum_{n=-\infty}^{N} (-i)^n J_n (z_{k_1}) e^{i n(k_1 x + \phi_1) } (-i)^{N-n} J_{N-n}(z_{k_2}) e^{i (N-n)(k_2 x + \phi_2)} \\
   &=\frac{\sin 2\theta_m}{2} \sum_{a = 1}^2 A_a \sin (k_a x + \phi_a) e^{-i\omega_m x} \sum_{N=-\infty}^{\infty} \sum_{n=-\infty}^{N} (-i)^N J_{n}(z_{k_1}) J_{N-n}(z_{k_2}) e^{i n ((k_1-k_2)x + \phi_1 - \phi_2) + i N (k_2 x + \phi_2)}
   :label: stimulated-multi-freq-hamiltonian-12-element


To proceed on, we rewrite :math:`\sum_{a = 1}^2 A_a \sin (k_a x + \phi_a)`,

.. math::
   &A_1 \sin(k_1 x +\phi_1) + A_2 \sin(k_2 x +\phi_2) \\
   = & \frac{A_1}{2i}\left( e^{i(k_1 x + \phi_1)} +  e^{-i(k_1 x + \phi_1)} \right) + \frac{A_2}{2i} \left( e^{i(k_2 x + \phi_2)} +  e^{-i(k_2 x + \phi_2)} \right).

We define

.. math::
   h = h_1 + h_2,

where

.. math::
   h_1 =& \frac{A_1\sin 2\theta_m}{4i}\bigg( \sum_{N=-\infty}^\infty \sum_{n=-\infty}^N (-i)^N J_n(z_{k_1}) J_{N-n}(z_{k_2}) e^{ i  \left(  (n+1) (k_1 x + \phi_1) +  (N-n)(k_2 x + \phi_2) - \omega_m x \right) } \\
   & \sum_{N=-\infty}^\infty \sum_{n=-\infty}^N (-i)^N J_n(z_{k_1}) J_{N-n}(z_{k_2}) e^{ i \left(  (n-1) (k_1 x + \phi_1) + (N-n)(k_2 x + \phi_2) -  \omega_m x \right) }  \bigg),

and

.. math::
   h_2=& \frac{A_2\sin 2\theta_m}{4i}\bigg( \sum_{N=-\infty}^\infty \sum_{n=-\infty}^N (-i)^N J_n(z_{k_1}) J_{N-n}(z_{k_2}) e^{ i  \left(  n (k_1 x + \phi_1) + (N-n+1)(k_2 x + \phi_2) -  \omega_m x \right) } \\
   & \sum_{N=-\infty}^\infty \sum_{n=-\infty}^N (-i)^N J_n(z_{k_1}) J_{N-n}(z_{k_2}) e^{ i  \left(  n (k_1 x + \phi_1) + (N-n-1)(k_2 x + \phi_2) -  \omega_m x \right) }  \bigg).


To adopt the RWA approximation, we require some integers for each summation to satisfy the relations

.. math::
   (n_{11,N} + 1)k_1 + (N-n_{11,N}) k_2 -\omega_m &\sim 0 \\
   (n_{12,N} - 1)k_1 + (N-n_{12,N}) k_2 -\omega_m &\sim 0 \\
   n_{21,N}k_1 + (N-n_{21,N}+1) k_2 -\omega_m &\sim 0 \\
   n_{22,N} k_1 + (N-n_{22,N}-1) k_2 -\omega_m &\sim 0.

so that the :math:`x` dependent exponential almost vanishes (obtain the largest wavelength in fact). Notice that each :math:`n_{ij,N}` depends on the summation index :math:`N`.

We solve each :math:`n_{ij,N}`,

.. math::
   n_{11,N} &\sim \mathrm{Round}\left[\frac{\omega_m - N k_2 -k_1}{k_1 - k_2} \right] \\
   n_{12,N} &\sim \mathrm{Round}\left[\frac{\omega_m - N k_2 + k_1}{k_1 - k_2}\right] \\
   n_{21,N} &\sim \mathrm{Round}\left[\frac{\omega_m - (N + 1) k_2 }{k_1 - k_2} \right]\\
   n_{22,N} &\sim \mathrm{Round}\left[\frac{\omega_m - (N - 1) k_2 }{k_1 - k_2} \right].


Another important constrain is that :math:`n\leq N`, thus we have

.. math::
   N_{11} &\sim \mathrm{Round}\left[\frac{\omega_m - k_1}{k_1}\right] \\
   N_{12} &\sim \mathrm{Round}\left[\frac{\omega_m + k_1}{k_1}\right] \\
   N_{21} &\sim \mathrm{Round}\left[\frac{\omega_m - k_2}{k_1}\right] \\
   N_{22} &\sim \mathrm{Round}\left[\frac{\omega_m + k_2}{k_1}\right],


for each summation over :math:`N` and we require :math:`N\geq N_{ij}` for each summation. We also assumed :math:`k_1 > k_2`. In other words, :math:`N_{ij}` are the lower limits of the summations over :math:`N`'s.


Using RWA, we keep only the resonance terms for the summation over :math:`n`'s,

.. math::
   h_1 \approx & \frac{A_1\sin 2\theta_m}{4i} \bigg( \sum_{N=N_{11}}^\infty (-i)^N J_{n_{11}} (z_{k_1}) J_{N-n_{11}}(z_{k_2}) e^{ i \left(  (n_{11}+1) (k_1 x + \phi_1) + (N-n_{11})(k_2 x + \phi_2) - \omega_m x \right) }   \\
   & \sum_{N=N_{12}}^\infty (-i)^N J_{n_{12}} (z_{k_1}) J_{N-n_{12}}(z_{k_2}) e^{ i \left(  (n_{12}-1) (k_1 x + \phi_1) + (N-n_{12})(k_2 x + \phi_2) - \omega_m x \right) }\bigg),


and

.. math::
   h_2 \approx & \frac{A_2\sin 2\theta_m}{4i} \bigg( \sum_{N=N_{21}}^\infty (-i)^N J_{n_{21}} (z_{k_1}) J_{N-n_{21}}(z_{k_2}) e^{ i \left(  n_{21} (k_1 x + \phi_1) + (N-n_{21} + 1)(k_2 x + \phi_2) - \omega_m x \right) }   \\
   & \sum_{N=N_{22}}^\infty (-i)^N J_{n_{22}} (z_{k_1}) J_{N-n_{22}}(z_{k_2}) e^{ i \left(  n_{22} (k_1 x + \phi_1) + (N-n_{22}-1)(k_2 x + \phi_2) - \omega_m x \right) }\bigg) .



.. admonition:: Comment on This Result
   :class: hint

   I can imagine how hard it is to solve the equation of motion with this :math:`h`. Well, is it?



One by One Approximation
`````````````````````````````````````

After reading Kelly Patton et al, we decided to try the approximation they are using.

By looking at the Hamiltonian, we can identify terms like this

.. math::
   h_a = \left( \frac{\sin 2\theta_m}{2}  A_a \sin (k_a x + \phi_a) e^{-i\omega_m x}  \sum_{n=-\infty}^{\infty} (-i)^n J_n (z_{k_a}) e^{i n(k_a x + \phi_a) }  \right) \prod_{b\neq a} \sum_{n=-\infty}^{\infty} (-i)^n J_n (z_{k_b}) e^{i n(k_b x + \phi_b) },

where the parenthensis part is what we would have if only one frequency is used and we also have

.. math::
   h = \sum_{a} h_a,

for all frequencies.

This reminds us that each of these terms means the interference due to other frequencies. As a simple example, we demonstrate two-frequency case.

The two-frequency matter perturbation system has a Hamiltonian element :math:`H_{12}`

.. math::
   h = h_1 + h_2,

where

.. math::
   h_1 & = {\color{blue}-\frac{k_1 \tan 2\theta_m}{2} \sum_{n_1=-\infty}^{\infty} (-i)^{n_1} n_1 J_{n_1} (z_{k_1}) e^{i (n_1 k_1-\omega_m)x} e^{i n_1\phi_1} } {\color{red} \sum_{n_2=-\infty}^{\infty} (-i)^{n_2} J_{n_2}(z_{k_2}) e^{i(n_2k_2)x} e^{i n_2 \phi_2}  }, \\
   h_2 & = {\color{red} - \frac{k_2\tan 2\theta_m}{2} \sum_{n_2=-\infty}^{\infty} (-i)^{n_2} n_2 J_{n_2}(z_{k_2}) e^{i(n_2k_2-\omega_m)x} e^{i n_2 \phi_2}  }{\color{blue} \sum_{n_1=-\infty}^{\infty} (-i)^{n_1} J_{n_1}(z_{k_1}) e^{in_1 k_1 x} e^{i n_1 \phi_1} }

with red color coding the second frequency and blue coding the first frequency. :math:`h` is symmetric under exchange of index 1, 2 since the exchange simply switches :math:`h_1` and :math:`h_2`.




Which one Dominates?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


To grasp a clue, we need to identify which term in the summation dominates. Without a good analytical analysis, the only way to do is to numerically calculate the effect of each order.

By order, we are already thinking of a dominating term which is not true. Nonethless, we assume RWA can be applied to the part that looks like one frequency only. In our two-frequency example, first RWA leads to

.. math::
   h_1 & \approx {\color{blue}-\frac{k_1 \tan 2\theta_m}{2} (-i)^{n_{1,0}} n_{1,0} J_{n_{1,0}} (z_{k_1}) e^{i (n_{1,0} k_1-\omega_m)x} e^{i n_{1,0}\phi_1} } {\color{red} \sum_{n_2=-\infty}^{\infty} (-i)^{n_2} J_{n_2}(z_{k_2}) e^{i(n_2k_2)x} e^{i n_2 \phi_2}  }, \\
   h_2 & \approx {\color{red} - \frac{k_2\tan 2\theta_m}{2} (-i)^{n_{2,0}} n_{2,0} J_{n_{2,0}}(z_{k_2}) e^{i(n_{2,0}k_2-\omega_m)x} e^{i n_{2,0} \phi_2}  }{\color{blue} \sum_{n_1=-\infty}^{\infty} (-i)^{n_1} J_{n_1}(z_{k_1}) e^{in_1 k_1 x} e^{i n_1 \phi_1} },
   :label: eqn-after-first-rwa

where

.. math::
   n_{1,0} &= \mathrm{Round}\left[  \frac{\omega_m}{k_1}  \right], \\
   n_{2,0} &= \mathrm{Round}\left[  \frac{\omega_m}{k_2}  \right] .

With this approximation, we can use RWA again by requiring

.. math::
   (n_{1,0} k_1-\omega_m + n_2 k_2)x &\sim 0, \\
   (n_1 k_1-\omega_m + n_{2,0} k_2)x &\sim 0,

where the integer solutions are

.. math::
   n'_{2,0} &= \mathrm{Round}\left[ \frac{ n_{1,0} k_1-\omega_m }{k_2} \right], \\
   n'_{1,0} &= \mathrm{Round}\left[ \frac{ n_{2,0} k_1-\omega_m }{k_1} \right].

Now we can remove all the summations using another RWA approximation. However, whether it holds is up to investigation.

The final result is

.. math::
   h_1 & \approx {\color{blue}-\frac{k_1 \tan 2\theta_m}{2} (-i)^{n_{1,0}} n_{1,0} J_{n_{1,0}} (z_{k_1}) e^{i (n_{1,0} k_1-\omega_m)x} e^{i n_{1,0}\phi_1} } {\color{red} (-i)^{n'_{2,0}} J_{n'_{2,0}}(z_{k_2}) e^{i(n'_{2,0}k_2)x} e^{i n'_{2,0} \phi_2}  } \\
   & = -\frac{k_1 \tan 2\theta_m}{2} (-i)^{ n_{1,0}+n'_{2,0} }   e^{i (n_{1,0}\phi_1 + n'_{2,0} \phi_2)} n_{1,0} J_{n_{1,0}} (z_{k_1})  J_{n'_{2,0}}(z_{k_2}) e^{i(n_{1,0} k_1-\omega_m + n'_{2,0}k_2)x}  \\
   & \equiv \frac{F_1}{2} e^{i(n_{1,0} k_1-\omega_m + n'_{2,0}k_2)x}  , \\
   h_2 & \approx {\color{red} - \frac{k_2\tan 2\theta_m}{2} (-i)^{n_{2,0}} n_{2,0} J_{n_{2,0}}(z_{k_2}) e^{i(n_{2,0}k_2-\omega_m)x} e^{i n_{2,0} \phi_2}  }{\color{blue} \sum_{n_1=-\infty}^{\infty} (-i)^{n_1} J_{n_1}(z_{k_1}) e^{in_1 k_1 x} e^{i n_1 \phi_1} } \\
   & = - \frac{k_2\tan 2\theta_m}{2} (-i)^{n_{2,0}+ n'_{1,0} }   e^{i (n_{2,0} \phi_2 + n'_{1,0} \phi_1)}  n_{2,0} J_{n_{2,0}}(z_{k_2}) J_{n'_{1,0}}(z_{k_1})  e^{i(n_{2,0}k_2-\omega_m+ n'_{1,0} k_1)x} \\
   & \equiv \frac{F_2}{2} e^{i(n_{2,0}k_2-\omega_m+ n'_{1,0} k_1)x} .



Lowest order only works for very special cases where on of the wave vectors is very close to resonance. To fix this problem, we could add more higher orders, however, what does it mean to have higher orders needs a discussion.


.. admonition:: How to Include Higher Orders
   :class: note

   The first thought of higher orders is to add more from the summation before the last RWA. However, it is highly suspicious that this is just like the one frequency case which has a very fast drop in the resonance width as we go to higher orders.

   This guess needs proof, numerically and analytically.

   But notice, when we said higher orders, we actually mean higher orders in both :math:`n_1` and :math:`n_2`. Notice that we can alway write the 12 element of Hamiltonian as :eq:`2-freq-hamiltonian-12-element`, i.e.,

   .. math::
      h &= h_1 + h_2 \\
      & = \sum_{n_1=-\infty}^\infty \sum_{n_2=-\infty}^{\infty} B_{n_1,n_2}(k_1,k_2) \Phi e^{i(n_1 k_1 + n_2 k_2 - \omega_m)x} +  \sum_{n_1=-\infty}^\infty \sum_{n_2=-\infty}^{\infty} B_{n_2,n_1}(k_2,k_1) \Phi e^{i(n_1 k_1 + n_2 k_2 - \omega_m)x} \\
      & = \sum_{n_1=-\infty}^\infty \sum_{n_2=-\infty}^{\infty} \left( B_{n_1,n_2}(k_1,k_2) + B_{n_2,n_1}(k_2,k_1) \right) \Phi e^{i(n_1 k_1 + n_2 k_2 - \omega_m)x},

   without any approximations.



1. One of the choices of adding higher orders is to use :math:`n_1=\mathrm{Round}\left[ \frac{\omega_m}{k_1} \right]` and :math:`n_2=\mathrm{Round}\left[ \frac{ n_1  k_1 - \omega_m }{k_2} \right]` as the lowest order in :math:`h_1` and :math:`n_2=\mathrm{Round}\left[ \frac{\omega_m}{k_2} \right]` and :math:`n_1=\mathrm{Round}\left[ \frac{ n_2  k_2 - \omega_m }{k_1} \right]` as the lowest order in :math:`h_2`. Adding higher orders means we add or remove one from :math:`n_1` in :math:`h_1` and recalculate :math:`n_2`, while add or remove one from :math:`n_2` in :math:`h_2` and recalculate :math:`n_1`.

   That is to say, we always keep the RWA condition for the last RWA process. What can be changed is the first assumption that the most important term is when only one frequency is relavent which is not always true.

   As an example, we now consider :math:`n_{i,\pm 1}=n_{i,0}\pm 1` and :math:`n'_{i,\pm 1} =  \mathrm{Round}\left[ \frac{ n_{j,\pm 1} k_j - \omega_m }{k_i} \right]` with :math:`j\neq i`, thus we replace :math:`n_{i,0}` with :math:`n_{i,\pm 1}` to get higher order corrections.



   .. figure:: assets/matter-stimulated/compApproxNum/compApproxNum.png
      :align: center

      Top Left: Smaller wavenumber :math:`k_1=0.95` is at resonance and it has smaller perturbation amplitude (:math:`k_2=1.55`);
      Top Right: Smaller wavenumber :math:`k_1=0.95` is at resonance and it has larger perturbation amplitude (:math:`k_2=1.55`);
      Bottom Left: Larger wavenumber :math:`k_2=0.95` is at resonance and it has smaller perturbation amplitude (:math:`k_1=0.35`);
      Bottom Right: Larger wavenumber :math:`k_2=0.95` is at resonance and it has larger perturbation amplitude (:math:`k_1=0.35`).
      Red dotted line is numerical solution, black line is lowest approximation of :math:`k_2`, magenta is higher order approximation of :math:`k_2`.




   In real physical systems, it is more likely to have a matter profile so that we have the bottom left situation. In other words, RWA method breaks down in the most interesting case.

2. Another choice is to add or remove one for both :math:`n_1` and :math:`n_2` for both terms in the Hamiltonian. The approach will define the order :math:`n_{order}` first, as will be applied to the n's. As an example, adding first order to :math:`n_1` will include all the possible combinations of :math:`n_1,n_1\pm 1` for both terms without changing :math:`n_2`. As an example, we compare the different orders of :math:`n_1` only with the numerical calculation without approximations.

   .. figure:: assets/matter-stimulated/stimulated-2-freq-higher-orders-approach-2.png
      :align: center

      Compare the different orders with the numerical calculation without approximations, where red dotted line is the numerical calculation without approximation. As we could see from the figure, including up to third order in :math:`n_1` fixes the deviation from numerical calculation (red dotted line). The wave vectors are :math:`k_1=0.5`, :math:`k_2=0.8`, amplitudes are :math:`A_1=0.1 k_1^{-5/3}`, :math:`A_2=0.1 k_2^{-5/3}`, mixing angle in background matter is :math:`\theta_m=\pi/5`.

3. Now according to the complate expression of the 12 element of Hamiltonian :eq:`2-freq-hamiltonian-12-element`, there is no difference between :math:`n_1` and :math:`n_2`. Thus whenever we talk about different orders, we should not distinguish between the two integers. However, how to define zero order is not clear to me at this point. To find out, we need to know the resonance width of each pair of integers. The insight comes from the single frequency result. We notice in equation :ref:`single frequency width <single-frequency-equation-eqn-single-frequency-width-guessing>`, single frequency width depends on the coefficient in front of the phase in the Hamiltonian and the integer. The task is to derive or guess the resonance width for each pair of integers :math:`n_1, n_2`.




.. admonition:: Which Approximation Breaks Down
   :class: note

   We ask the question, which approximation is breaking down exactly during our RWA? To find out, we first include all the orders after the first assumption, i.e., we do not use RWA for the second time, which means :eq:`eqn-after-first-rwa` holds but no RWA will be applied to this.

   Not notice that the summation in :eq:`eqn-after-first-rwa` is due to the Jacobi-Anger expansion, which is not even helpful in our next calculation. Therefore, we trace back to their original expressions, which leads to

   .. math::
      h_1 & \approx {\color{blue}-\frac{k_1 \tan 2\theta_m}{2} (-i)^{n_{1,0}} n_{1,0} J_{n_{1,0}} (z_{k_1}) e^{i (n_{1,0} k_1-\omega_m)x} e^{i n_{1,0}\phi_1} } {\color{red} e^{-i z_{k_2} \cos(k_2 x+\phi_2)  } }, \\
      h_2 & \approx {\color{red} - \frac{k_2\tan 2\theta_m}{2} (-i)^{n_{2,0}} n_{2,0} J_{n_{2,0}}(z_{k_2}) e^{i(n_{2,0}k_2-\omega_m)x} e^{i n_{2,0} \phi_2}  }{\color{blue}  e^{-i z_{k_1} \cos(k_1 x+\phi_1)  } }.

   We then perform a numerical calculation using this Hamiltonian element and compare it with the full numerical results.



A More Systematic Thinking of 2-Frequency
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


The 12 element can be written as

.. math::
   h = h_1 + h_2,

where

.. math::
   h_1 &=\sum_{n_1=-\infty}^\infty \sum_{n_2=-\infty}^{\infty}\left( -(-i)^{n_1+n_2}\frac{\tan 2\theta_m}{2} n_1 k_1 J_{n_1}(z_{k_1}) J_{n_2}(z_{k_2})  \right) e^{i(n_1\phi_1+n_2\phi_2)} e^{i(n_1 k_1 + n_2 k_2 - \omega_m)x}, \\
   h_2 &=\sum_{n_1=-\infty}^\infty \sum_{n_2=-\infty}^{\infty}\left( -(-i)^{n_1+n_2}\frac{\tan 2\theta_m}{2} n_2 k_2 J_{n_1}(z_{k_1}) J_{n_2}(z_{k_2})  \right) e^{i(n_1\phi_1+n_2\phi_2)} e^{i(n_1 k_1 + n_2 k_2 - \omega_m)x}.

For simplicity, we define

.. math::
   B_{n_1,n_2}(k_1,k_2,A_1,A_2) &= -(-i)^{n_1+n_2} \tan 2\theta_m n_1 k_1 J_{n_1}(z_{k_1}) J_{n_2}(z_{k_2}) = -(-i)^{n_1+n_2} \tan 2\theta_m n_1 k_1 J_{n_1}(\frac{A_1}{k_1}\cos 2\theta_m) J_{n_2}(\frac{A_2}{k_2}\cos 2\theta_m)  ,\\
   \Phi & = e^{i(n_1\phi_1+n_2\phi_2)}.

Notice that

.. math::
   B_{n_2,n_1}(k_2,k_1, A_2, A_1) &= -(-i)^{n_1+n_2} \tan 2\theta_m n_2 k_2 J_{n_1}( \frac{A_1}{k_1}\cos 2\theta_m ) J_{n_2}( \frac{A_2}{k_2}\cos 2\theta_m ).

Using these definitions, we rewrite the Hamiltonian 12 element

.. math::
   h &= h_1 + h_2 \\
   & = \frac{1}{2}\sum_{n_1=-\infty}^\infty \sum_{n_2=-\infty}^{\infty} B_{n_1,n_2}(k_1,k_2,A_1,A_2) \Phi e^{i(n_1 k_1 + n_2 k_2 - \omega_m)x} +  \frac{1}{2}\sum_{n_1=-\infty}^\infty \sum_{n_2=-\infty}^{\infty} B_{n_2,n_1}(k_2,k_1,A_2,A_1) \Phi e^{i(n_1 k_1 + n_2 k_2 - \omega_m)x} \\
   & = \frac{1}{2}\sum_{n_1=-\infty}^\infty \sum_{n_2=-\infty}^{\infty} \left( B_{n_1,n_2}(k_1,k_2,A_1,A_2) + B_{n_2,n_1}(k_2,k_1,A_2,A_1) \right) \Phi e^{i(n_1 k_1 + n_2 k_2 - \omega_m)x}\\
   & = \frac{1}{2}\sum_{n_1=-\infty}^\infty \sum_{n_2=-\infty}^{\infty} B_2{n_1,n_2}(k_1,k_2,A_1,A_2)\Phi e^{i(n_1 k_1 + n_2 k_2 - \omega_m)x},
   :label: 2-freq-hamiltonian-12-element

where :math:`B_2{n_1,n_2}(k_1,k_2,A_1,A_2)\equiv B_{n_1,n_2}(k_1,k_2,A_1,A_2) + B_{n_2,n_1}(k_2,k_1,A_2,A_1)` is what we are interested in.

Comparing this expression with the single frequency one which is almost the same structure if we remove the two sums, and using the result :ref:`transition probability for single frequency <single-frequency-equation-stimulated-single-freq-trans-probability>`, we can infer that the transition probability,

.. math::
   P_{1\to 2}(x) = \frac{\lvert \hat B_2 \rvert^2}{ \lvert \hat B_2 \rvert^2 + \hat g_2^2} \sin^2\left( \frac{q_2}{2}x \right),

where :math:`\hat B_2=\frac{ B_2 }{\omega_m}=\frac{B_{n_1,n_2}(k_1,k_2,A_1,A_2) + B_{n_2,n_1}(k_2,k_1,A_2,A_1)}{\omega_m}` and :math:`\hat g_2 = \frac{g}{\omega_m} = n_1 \hat k_1 + n_2 \hat k_2 - 1` which tells us how far from resonance and :math:`q_2=\sqrt{ \lvert \hat B_2 \rvert^2 + \hat g^2 }`.

The width then is similar to :ref:`single frequency width <single-frequency-equation-eqn-single-frequency-width-guessing>`, except that we could not define the width as a function of single variables since two wave vector are used. However, it is still reasonable to give the FWHM condition,

.. math::
   n_1 \hat k_1 + n_2 \hat k_2 - 1 = \pm \lvert \hat B_2 \rvert = \left\lvert \frac{B_{n_1,n_2}(k_1,k_2,A_1,A_2) + B_{n_2,n_1}(k_2,k_1,A_2,A_1)}{\omega_m} \right\rvert.
   :label: stimulated-2-freq-width-requirement-raw

For a given pair of integers :math:`n_1,n_2`, we could find the amplitude as a function of :math:`k_1, k_2`.


.. admonition:: Solve The Problem
   :class: note

   A solution shows that this is correct. The solution to the second element of wave function is

   .. math::
      \psi_{b2} = i \frac{ \lvert \hat B_2\rvert^2 e^{-\frac{i}{2} \hat g_2 \hat x} }{ \hat B_2 \sqrt{\lvert \hat B_2\rvert^2 + \hat g^2} }\sin\left( \frac{\sqrt{ \lvert \hat B_2 \rvert^2 + \hat g^2 }}{2}x \right)  .


It is very confusing when we write down the requirement for width :eq:`stimulated-2-freq-width-requirement-raw`, since we need to assume :math:`\lvert \hat F_2 \rvert` to be almost constant to arrive this result. What values of :math:`\hat k_1,\hat k_2` do we need to calculate :math:`\lvert \hat F_2 \rvert`?

The idea is to find the FWHM when a point is deviating from the line. To be specific, we find the line that is the resonance using :math:`n_1 k_1 + n_2 k_2 = 1`, which is plotted as dashed red line in :numref:`diagram-of-width-2-freq`. To characterise the distance, we need a line that is perpendicular to this red dashed resonance line, which also is passing through the values of :math:`(k_10,k_2)=(k_{10},k_{20})` which is given in the system. Under this scheme, the resonance width is define as the distance from the resonance line when the amplitude reduces to half on this blue dotted perpendicular line.


.. _diagram-of-width-2-freq:

.. figure:: assets/matter-stimulated/stimulated-2-freq-width-diagram.png
   :align: center

   Diagram of Width.

In the language of algebra, we could derive the interception point of the two lines, which is

.. math::
   k_{1,\mathrm{intercept}} &= \frac{n_2^2 k_{10} + n_2 k_{20} + n_1 }{n_1^2 + n_2^2}, \\
   k_{2,\mathrm{intercept}} &= \frac{n_1}{n_2}k_{1,\mathrm{intercept}} - \frac{1}{n_2},

where :math:`k_{10}` and :math:`k_{20}` are the values given in the matter perturbation of the system.

Using this method, we can define a reasonable width for two frequency matter perturbation case,

.. math::
   \Gamma_2 = \frac{B_2(k_{1,\mathrm{intercept}},k_{2,\mathrm{intercept}})}{\sqrt{n_1^2 + n_2^2}}.


.. admonition:: Derivation of Width for 2 Frequency Matter Perturbation
   :class: hint

   First of all, we assume that a point :math:`(\hat k_{10},\hat k_{20})` is a displace from the line by the FWHM :math:`\hat L` in :math:`\hat k_2`, which means that, the line that is paralell to the resonance line and passing through the point :math:`(\hat k_{10},\hat k_{20})` is displaced by :math:`\hat L` in :math:`\hat k_2`,

   .. math::
      n_1 \hat k_1 + n_2 \hat k_2 - n_2 \hat L = 1.

   We assume the width of resonance is not large so that we could use resonance values for :math:`\hat k_1, \hat k_2`. For FWHM, we require

   .. math::
      n_1 k_{1,\mathrm{intercept}} + n_2 k_{2,\mathrm{intercept}} -1  - n_2 \hat L = \lvert \hat B_2(k_{1,\mathrm{intercept}},k_{2,\mathrm{intercept}}) \rvert,

   where we could apply :math:`n_1 k_{1,\mathrm{intercept}} + n_2 k_{2,\mathrm{intercept}} -1 = 0` because we assumed the width is narrow, thus

   .. math::
      - n_2 \hat L = \lvert \hat B_2(k_{1,\mathrm{intercept}},k_{2,\mathrm{intercept}}) \rvert.


   However, :math:`L` is not the actually deviation from the interception point. We could calculate the actual deviation :math:`\Gamma_2` on the blue line in figure :numref:`diagram-of-width-2-freq`, which is given by

   .. math::
      \sqrt{n_1^2 + n_2^2} \Gamma_2 = n_2 L,

   i.e., we find the resonance width

   .. math::
      \Gamma_2 =  \frac{B_2(k_{1,\mathrm{intercept}},k_{2,\mathrm{intercept}})}{\sqrt{n_1^2 + n_2^2}}.


To apply the width in a problem, we need to calculate the distance between the given point :math:`(k_{10},k_{20})` of the system to a certain resonance line which depends on :math:`n_1,n_2,A_1,A_2,\theta_m`. This is as simple as point to line distance, which is calculated using

.. math::
   d = \frac{\lvert n_1 k_{10} + n_2 k_{20} - 1 \rvert}{\sqrt{n_1^2 + n_2^2} }.
   :label: stimulated-2-freq-distance-0

Here comes the question: **what is the requirement for a pair of** :math:`(n_1,n_2)` **to be important?**

We answer this by defining a quantity that compares the distance from a certain resonance line with the width of this resonance line,

.. math::
   Q_2 = \frac{d}{\Gamma_2}.



.. admonition:: Caveats
   :class: note

   There are caveats when calculating the distance :math:`d` or the width :math:`\Gamma_2`.

   The first problem is the zeros. In special cases, :math:`n_1=0` as an example, the distance :math:`d` using the equation :eq:`stimulated-2-freq-distance-0` will lead to infinities. Same thing happens to the width.

   The solution is to treat the special cases seperately. As an result, we conclude that

   .. math::
      d=\begin{cases}
      \frac{\lvert n_1 k_{10} + n_2 k_{20} -1 \rvert}{\sqrt{ n_1^2 + n_2 ^2 }}, & n_1\neq 0 \&\& n_2 \neq 0 \\
      \infty , & & n_1= 0 \&\& n_2 = 0.
      \end{cases}
      :label: stimulated-2-freq-distance-d

   The :math:`\infty` is simply a defined value which is to ensure the final values of :math:`Q_2` to be reasonable.

   Meanwhile, the width can always be written as :math:`\Gamma_2 = \frac{B_2(k_{1,\mathrm{intercept}},k_{2,\mathrm{intercept}})}{\sqrt{n_1^2 + n_2^2}}.` as long as :math:`n_1\neq 0\&\& n_2\neq 0`. However, what we mean by :math:`k_{1,\mathrm{intercept}},k_{2,\mathrm{intercept}}` has special situations.

   For :math:`n_1\neq 0\&\& n_2\neq 0`, we have the general solution

   .. math::
      k_{1,\mathrm{intercept}} &= \frac{n_2^2 k_{10} + n_2 k_{20} + n_1 }{n_1^2 + n_2^2}, \\
      k_{2,\mathrm{intercept}} &= \frac{n_1}{n_2}k_{1,\mathrm{intercept}} - \frac{1}{n_2}.

   For :math:`n_1=0\&\& n_2\neq 0`, we have

   .. math::
      k_{1,\mathrm{intercept}} &= k_{10}, \\
      k_{2,\mathrm{intercept}} &= \frac{1}{n_2}.

   Finally, for :math:`n_1\neq 0\&\& n_2 =0`, we need

   .. math::
      k_{1,\mathrm{intercept}} &=\frac{1}{n_1}, \\
      k_{2,\mathrm{intercept}} &= k_{20}.

   As for :math:`n_1=0\&\& n_2=0`, we define the width to be zero.

   One last thing,

   .. math::
      Q_2 = \begin{cases}
      \frac{d}{\Gamma_2}, & \Gamma_2\neq 0 \\
      \infty, & \Gamma_2 = 0\&\& d\neq 0\\
      0, & \Gamma_2=0\&\& d = 0
      \end{cases}
