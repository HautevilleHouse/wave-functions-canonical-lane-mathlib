import Mathlib

namespace HautevilleHouse
namespace WaveFunctionsCanonicalLaneLean

structure WaveFunctionHilbertSpace where
  carrier : Type u
  innerProduct : carrier → carrier → ℂ
  norm : carrier → ℝ
  completeness : Prop
  separable : Prop
  completenessTerm : completeness
  separableTerm : separable

def WaveFunctionHilbertSpaceClosed (H : WaveFunctionHilbertSpace) : Prop :=
  H.completeness ∧ H.separable

theorem wave_function_hilbert_space_closed_from_evidence (H : WaveFunctionHilbertSpace) :
    WaveFunctionHilbertSpaceClosed H := by
  exact And.intro H.completenessTerm H.separableTerm

end WaveFunctionsCanonicalLaneLean
end HautevilleHouse