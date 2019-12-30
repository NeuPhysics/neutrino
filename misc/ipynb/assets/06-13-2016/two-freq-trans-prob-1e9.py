import numpy as np
from scipy.integrate import odeint
from scipy.integrate import ode
import matplotlib.pylab as plt

    
endpoint = 1000000000; # integration range
dx = 10.0; # step size
lam0 = 0.845258; # in unit of omegam, omegam = 3.66619*10^-17
dellam = np.array([0.00003588645221954444, 0.06486364865874367]); # deltalambda/omegam
ks = [1.0,1.0/90]; # two k's
thm = 0.16212913985547778; # theta_m


psi0, x0 = [1.0+0.j, 0.0], 0

savestep = 1000;

xlin = np.arange(dx,endpoint+1*dx, dx)

psi = np.zeros([len(xlin)  , 2], dtype='complex_')

xlinsave = np.zeros(len(xlin)/savestep);
psisave = np.zeros([len(xlinsave)  , 2], dtype='complex_')


def hamiltonian(x, deltalambda, k, thetam):
    
    return [[ 0,   0.5* np.sin(2*thetam) * ( deltalambda[0] * np.sin(k[0]*x) + deltalambda[1] * np.sin(k[1]*x) ) * np.exp( 1.0j * ( - x - np.cos(2*thetam) * (  ( deltalambda[0]/k[0] * np.cos(k[0]*x) + deltalambda[1]/k[1] * np.cos(k[1]*x) ) )  ) )     ],   [ 0.5* np.sin(2*thetam) * ( deltalambda[0] * np.sin(k[0]*x) + deltalambda[1] * np.sin(k[1]*x) ) * np.exp( -1.0j * ( - x - np.cos(2*thetam) * ( deltalambda[0] /k[0] * np.cos(k[0]*x) + deltalambda[1] /k[1] * np.cos(k[1]*x) )  ) ), 0 ]]   # Hamiltonian for double frequency

def deripsi(t, psi, deltalambda, k , thetam):
    
    return -1.0j * np.dot( hamiltonian(t, deltalambda,k,thetam), [psi[0], psi[1]] )



sol = ode(deripsi).set_integrator('zvode', method='bdf', atol=1e-8, with_jacobian=False)
sol.set_initial_value(psi0, x0).set_f_params(dellam,ks,thm)

flag = 0
flagsave = 0

while sol.successful() and sol.t < endpoint:
    sol.integrate(xlin[flag])
    if np.mod(flag,savestep)==0:
        psisave[flagsave] = sol.y
        xlinsave[flagsave] = sol.t
        flagsave = flagsave + 1
    flag = flag + 1
    #   print sol.t, sol.y



prob = np.absolute(psisave)**2
probtran = np.transpose(prob)
np.save("assets/probtran-1e9",probtran)

