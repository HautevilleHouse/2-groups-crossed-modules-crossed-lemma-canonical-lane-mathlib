import canonicalLaneMathlib.AdmissibleClass
import TwoGroupsCrossedModulesCrossedLemmaCanonicalLaneLean.CrossedModuleAdmissibleClass

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossedLemmaCanonicalLaneLean

def bridgeClosed (A : CrossedModuleAdmissibleClass) : Prop :=
  CrossedModuleClosed A.object.package

theorem bridge_from_admissible_class (A : CrossedModuleAdmissibleClass) :
  bridgeClosed A := by
  have h := A.object.evidence.crossedModuleNonTrivialClosed
  exact h

end TwoGroupsCrossedModulesCrossedLemmaCanonicalLaneLean
end HautevilleHouse