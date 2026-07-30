import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveFunctionsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  waveConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "wave-functions-canonical-lane",
    theoremName := "WaveFunctionsCanonicalLaneLean",
    theoremObject := "Wave-admissible object closure",
    classicalBoundary := "classical wave function boundary carried",
    waveConstrainedStatement := "wave-constrained theorem certificate internalized through admissible class bridge and gate",
    certificateLane := "wave_constrained",
    carriedRemainder := "classical boundary carried by wave-remainder"
  }

end WaveFunctionsCanonicalLaneLean
end HautevilleHouse