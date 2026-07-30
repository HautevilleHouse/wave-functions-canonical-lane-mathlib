import WaveFunctionsCanonicalLaneLean.SchrodingerEquation

namespace HautevilleHouse
namespace WaveFunctionsCanonicalLaneLean

structure WavePacketPackage where
  initialWavePacket : Type u
  spreadingRate : Prop
  coherenceTime : Prop
  gaussianOverlap : Prop

structure WavePacketEvidence (W : WavePacketPackage) where
  spreadingRateClosed : W.spreadingRate
  coherenceTimeClosed : W.coherenceTime
  gaussianOverlapClosed : W.gaussianOverlap

def WavePacketClosed (W : WavePacketPackage) : Prop :=
  W.spreadingRate ∧ W.coherenceTime ∧ W.gaussianOverlap

theorem wave_packet_closed_from_evidence
    (W : WavePacketPackage) (E : WavePacketEvidence W) :
    WavePacketClosed W := by
  exact And.intro E.spreadingRateClosed
    (And.intro E.coherenceTimeClosed E.gaussianOverlapClosed)

end WaveFunctionsCanonicalLaneLean
end HautevilleHouse