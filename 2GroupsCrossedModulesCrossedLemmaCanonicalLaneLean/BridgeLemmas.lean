import HautevilleHouse.TwoGroupsCrossedModulesCrossedLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossedLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CrossedModuleWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.crossedLemmaTerm

end TwoGroupsCrossedModulesCrossedLemmaCanonicalLaneLean
end HautevilleHouse