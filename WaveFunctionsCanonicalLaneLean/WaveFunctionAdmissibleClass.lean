import WaveFunctionsCanonicalLaneLean.WaveFunctionHilbertSpace
import WaveFunctionsCanonicalLaneLean.SchrodingerEquation
import WaveFunctionsCanonicalLaneLean.ObservableOperators
import WaveFunctionsCanonicalLaneLean.WaveFunctionCollapse

namespace HautevilleHouse
namespace WaveFunctionsCanonicalLaneLean

structure WaveFunctionAdmittedObject where
  hilbertSpace : WaveFunctionHilbertSpace
  schrodinger : SchrodingerEquation hilbertSpace
  observables : ObservableOperators hilbertSpace
  collapse : WaveFunctionCollapse hilbertSpace
  consistencyCondition : Prop
  consistencyConditionTerm : consistencyCondition

def WaveFunctionWitnessClosed (O : WaveFunctionAdmittedObject) : Prop :=
  O.consistencyCondition

structure WaveFunctionAdmissibleClass where
  object : WaveFunctionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def waveFunctionClosed (A : WaveFunctionAdmissibleClass) : Prop :=
  WaveFunctionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

theorem wave_function_closed_from_admissible_class (A : WaveFunctionAdmissibleClass) :
    waveFunctionClosed A := by
  exact And.intro A.object.consistencyConditionTerm A.gateWitness

end WaveFunctionsCanonicalLaneLean
end HautevilleHouse