import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WaveFunctionsCanonicalLaneLean.SchrodingerEquationAdmissible
import HautevilleHouse.WaveFunctionsCanonicalLaneLean.QuantumHarmonicOscillator

namespace HautevilleHouse
namespace WaveFunctionsCanonicalLaneLean

def ConstrainedWaveFunctionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_wave_function_endgame (A : AdmissibleClass) :
    ConstrainedWaveFunctionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end WaveFunctionsCanonicalLaneLean
end HautevilleHouse