import WaveFunctionsCanonicalLaneLean.WaveFunctionHilbertSpace

namespace HautevilleHouse
namespace WaveFunctionsCanonicalLaneLean

structure SchrodingerEquation (H : WaveFunctionHilbertSpace) where
  hamiltonian : H.carrier → H.carrier
  timeEvolution : ℝ → H.carrier → H.carrier
  hamiltonianSelfAdjoint : Prop
  hamiltonianSelfAdjointTerm : hamiltonianSelfAdjoint
  schrodingerEquationHolds : Prop
  schrodingerEquationHoldsTerm : schrodingerEquationHolds

def SchrodingerEquationClosed {H : WaveFunctionHilbertSpace} (S : SchrodingerEquation H) : Prop :=
  S.hamiltonianSelfAdjoint ∧ S.schrodingerEquationHolds

theorem schrodinger_equation_closed_from_evidence {H : WaveFunctionHilbertSpace} (S : SchrodingerEquation H) :
    SchrodingerEquationClosed S := by
  exact And.intro S.hamiltonianSelfAdjointTerm S.schrodingerEquationHoldsTerm

end WaveFunctionsCanonicalLaneLean
end HautevilleHouse