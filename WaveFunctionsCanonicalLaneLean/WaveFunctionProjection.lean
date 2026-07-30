import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveFunctionsCanonicalLaneLean

structure WaveProjection where
  toFun : WaveEndgameState → WaveEndgameState
  idempotent : ∀ x, toFun (toFun x) = toFun x

open HautevilleHouse.CanonicalLaneMathlibCore

def waveProjection : WaveProjection := {
  toFun := fun x => x
  idempotent := by intro x; rfl
}

theorem wave_projection_idempotent (x : WaveEndgameState) :
    waveProjection.toFun (waveProjection.toFun x) = waveProjection.toFun x := by
  exact waveProjection.idempotent x

end WaveFunctionsCanonicalLaneLean
end HautevilleHouse