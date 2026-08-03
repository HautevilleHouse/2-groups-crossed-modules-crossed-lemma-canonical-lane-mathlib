import canonicalLaneMathlib.AdmissibleClass
import Mathlib.CategoryTheory.Groupoid

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossedLemmaCanonicalLaneLean

structure TwoGroup (G : Type*) [Group G] where
  objects : Set G
  arrows : G → G → Set G
  composition : ∀ {a b c : G}, a ∈ objects → b ∈ objects → c ∈ objects →
    arrows a b → arrows b c → arrows a c
  identities : ∀ (a : G), a ∈ objects → arrows a a
  associativity : ∀ {a b c d : G} (f : arrows a b) (g : arrows b c) (h : arrows c d),
    composition (identities a) f g = composition f g h

structure TwoGroupPackage where
  G : Type u
  [instG : Group G]
  twoGroup : TwoGroup G
  categoricalEquivalence : Prop

structure TwoGroupEvidence (P : TwoGroupPackage) where
  categoricalEquivalenceClosed : P.categoricalEquivalence

def TwoGroupClosed (P : TwoGroupPackage) : Prop :=
  P.categoricalEquivalence

theorem twoGroup_closed_from_evidence (P : TwoGroupPackage) (E : TwoGroupEvidence P) :
  TwoGroupClosed P := by
  exact E.categoricalEquivalenceClosed

end TwoGroupsCrossedModulesCrossedLemmaCanonicalLaneLean
end HautevilleHouse