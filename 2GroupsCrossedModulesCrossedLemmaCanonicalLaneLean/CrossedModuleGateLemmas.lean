import canonicalLaneMathlib.AdmissibleClass
import TwoGroupsCrossedModulesCrossedLemmaCanonicalLaneLean.CrossedModuleAdmissibleClass

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossedLemmaCanonicalLaneLean

def gateClosed (A : CrossedModuleAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : CrossedModuleAdmissibleClass) :
  gateClosed A := by
  exact A.gateWitness

end TwoGroupsCrossedModulesCrossedLemmaCanonicalLaneLean
end HautevilleHouse