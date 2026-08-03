import canonicalLaneMathlib.AdmissibleClass
import Mathlib.GroupTheory.GroupAction.Basic

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossedLemmaCanonicalLaneLean

structure CrossedModule (G H : Type*) [Group G] [Group H] where
  action : G → H → H
  boundary : H → G
  bdy_action_compat : ∀ (h : H) (g : G), boundary (action g h) = g * boundary h * g⁻¹
  action_bdy_compat : ∀ (h1 h2 : H), action (boundary h1) h2 = h1 * h2 * h1⁻¹

structure CrossedModulePackage where
  G : Type u
  H : Type v
  [instG : Group G]
  [instH : Group H]
  crossedModule : CrossedModule G H
  crossedModuleNonTrivial : Prop

structure CrossedModuleEvidence (P : CrossedModulePackage) where
  crossedModuleNonTrivialClosed : P.crossedModuleNonTrivial

def CrossedModuleClosed (P : CrossedModulePackage) : Prop :=
  P.crossedModuleNonTrivial

theorem crossedModule_closed_from_evidence (P : CrossedModulePackage) (E : CrossedModuleEvidence P) :
  CrossedModuleClosed P := by
  exact E.crossedModuleNonTrivialClosed

end TwoGroupsCrossedModulesCrossedLemmaCanonicalLaneLean
end HautevilleHouse