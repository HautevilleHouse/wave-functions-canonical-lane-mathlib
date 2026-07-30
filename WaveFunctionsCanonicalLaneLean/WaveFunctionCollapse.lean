import WaveFunctionsCanonicalLaneLean.WaveFunctionHilbertSpace

namespace HautevilleHouse
namespace WaveFunctionsCanonicalLaneLean

structure WaveFunctionCollapse (H : WaveFunctionHilbertSpace) where
  measurementOutcome : H.carrier → H.carrier
  collapseRule : Prop
  bornRule : Prop
  collapseRuleTerm : collapseRule
  bornRuleTerm : bornRule

def WaveFunctionCollapseClosed {H : WaveFunctionHilbertSpace} (C : WaveFunctionCollapse H) : Prop :=
  C.collapseRule ∧ C.bornRule

theorem wave_function_collapse_closed_from_evidence {H : WaveFunctionHilbertSpace} (C : WaveFunctionCollapse H) :
    WaveFunctionCollapseClosed C := by
  exact And.intro C.collapseRuleTerm C.bornRuleTerm

end WaveFunctionsCanonicalLaneLean
end HautevilleHouse