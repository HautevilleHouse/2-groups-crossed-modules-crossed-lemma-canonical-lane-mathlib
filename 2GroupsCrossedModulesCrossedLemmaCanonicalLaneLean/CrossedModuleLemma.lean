import canonicalLaneMathlib.AdmissibleClass
import TwoGroupsCrossedModulesCrossedLemmaCanonicalLaneLean.CrossedModuleDefinitions
import TwoGroupsCrossedModulesCrossedLemmaCanonicalLaneLean.TwoGroupDefinitions

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossedLemmaCanonicalLaneLean

structure CrossedModuleLemmaPackage (P : CrossedModulePackage) (Q : TwoGroupPackage) where
  equivalenceMap : P.crossedModule → Q.twoGroup
  equivalenceInverse : Q.twoGroup → P.crossedModule
  equivalenceIsEquiv : Prop

structure CrossedModuleLemmaEvidence {P : CrossedModulePackage} {Q : TwoGroupPackage}
  (L : CrossedModuleLemmaPackage P Q) where
  equivalenceIsEquivClosed : L.equivalenceIsEquiv

def CrossedModuleLemmaClosed {P : CrossedModulePackage} {Q : TwoGroupPackage}
  (L : CrossedModuleLemmaPackage P Q) : Prop :=
  L.equivalenceIsEquiv ∧ CrossedModuleClosed P ∧ TwoGroupClosed Q

theorem crossedModuleLemma_closed_from_evidence {P : CrossedModulePackage} {Q : TwoGroupPackage}
  (L : CrossedModuleLemmaPackage P Q) (E : CrossedModuleLemmaEvidence L)
  (EP : CrossedModuleEvidence P) (EQ : TwoGroupEvidence Q) :
  CrossedModuleLemmaClosed L := by
  exact And.intro E.equivalenceIsEquivClosed
    (And.intro (crossedModule_closed_from_evidence P EP) (twoGroup_closed_from_evidence Q EQ))

structure CrossedModuleLemmaProof where
  lemmaPackage : CrossedModuleLemmaPackage
  evidence : CrossedModuleLemmaEvidence lemmaPackage

end TwoGroupsCrossedModulesCrossedLemmaCanonicalLaneLean
end HautevilleHouse