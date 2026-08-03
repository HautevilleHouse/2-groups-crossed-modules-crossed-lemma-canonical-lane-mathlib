import canonicalLaneMathlib.AdmissibleClass
import TwoGroupsCrossedModulesCrossedLemmaCanonicalLaneLean.CrossedModuleBridgeLemmas
import TwoGroupsCrossedModulesCrossedLemmaCanonicalLaneLean.CrossedModuleGateLemmas

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossedLemmaCanonicalLaneLean

def ConstrainedCrossedModuleClosure (A : CrossedModuleAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_crossed_module_endgame (A : CrossedModuleAdmissibleClass) :
  ConstrainedCrossedModuleClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end TwoGroupsCrossedModulesCrossedLemmaCanonicalLaneLean
end HautevilleHouse