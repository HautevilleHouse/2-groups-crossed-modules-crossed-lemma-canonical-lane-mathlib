import canonicalLaneMathlib.AdmissibleClass
import TwoGroupsCrossedModulesCrossedLemmaCanonicalLaneLean.CrossedModuleDefinitions

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossedLemmaCanonicalLaneLean

structure CrossedModuleAdmittedObject where
  package : CrossedModulePackage
  evidence : CrossedModuleEvidence package

structure CrossedModuleAdmissibleClass where
  object : CrossedModuleAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : CrossedModuleAdmissibleClass) : Prop :=
  CrossedModuleClosed A.object.package ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end TwoGroupsCrossedModulesCrossedLemmaCanonicalLaneLean
end HautevilleHouse