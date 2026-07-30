import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveFunctionsCanonicalLaneLean

structure WaveFunctionSpace where
  carrier : Type
  measure : carrier → ℝ
  innerProduct : carrier → carrier → ℝ
  squareIntegrable : Prop

structure WaveFunctionAdmittedObject where
  space : WaveFunctionSpace
  normalization : Prop
  admissiblePotential : Prop
  conclusion : normalization ∧ admissiblePotential

structure WaveFunctionEndgameState where
  object : WaveFunctionAdmittedObject

def WaveFunctionWitnessClosed (O : WaveFunctionAdmittedObject) : Prop :=
  O.conclusion

end WaveFunctionsCanonicalLaneLean
end HautevilleHouse