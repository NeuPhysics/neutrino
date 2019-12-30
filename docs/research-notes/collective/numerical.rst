Numerical Methods
======================


Finite Difference Form
-------------------------

Suppose we are going to solve the problem

.. math::
   i(\partial_t +\mathbf v \cdot \boldsymbol \nabla) \rho = [ \mathbf H, \rho ],

where

.. math::
   \rho = \frac{1}{2} \begin{pmatrix}
   a & b_r + i b_i \\
   b_r - i b_i & -a
   \end{pmatrix},

and

.. math::
   \mathbf H = \frac{1}{2}\begin{pmatrix}
   h & h'_r + i h'_i\\
   h'_r - i h'_i & -h
   \end{pmatrix}.

To solve it numerically we need to write down the real equation

.. math::
   (\partial_t + \mathbf v \cdot \boldsymbol\nabla) a &= - h'_r b_i + h'_i b_r \\
   (\partial_t + \mathbf v \cdot \boldsymbol\nabla) b_r &= - h'_i a + h b_i \\
   (\partial_t + \mathbf v \cdot \boldsymbol\nabla) b_i &= - h b_r + h'_r a.
