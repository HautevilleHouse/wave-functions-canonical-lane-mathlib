import canonicalLaneMathlib.AdmissibleClass
import WaveFunctionHilbertSpace
import SchrodingerEquation
import BornRule
import SuperpositionPrinciple
import WaveFunctionCollapse

namespace HautevilleHouse
namespace WaveFunctionsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WaveFunctionHilbertSpaceClosed A.hilbert ∧
  SchrodingerEquationClosed A.schrodinger ∧
  BornRuleClosed A.born ∧
  SuperpositionPrincipleClosed A.superposition ∧
  WaveFunctionCollapseClosed A.collapse

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  sorry

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedWaveFunctionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_wave_function_endgame (A : AdmissibleClass) :
    ConstrainedWaveFunctionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end WaveFunctionsCanonicalLaneLean
end HautevilleHouse