import HautevilleHouse.TwoGroupsCrossedModulesCrossedLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossedLemmaCanonicalLaneLean

def ConstrainedTwoGroupsCrossedModuleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_two_groups_crossed_module_endgame (A : AdmissibleClass) :
    ConstrainedTwoGroupsCrossedModuleClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end TwoGroupsCrossedModulesCrossedLemmaCanonicalLaneLean
end HautevilleHouse