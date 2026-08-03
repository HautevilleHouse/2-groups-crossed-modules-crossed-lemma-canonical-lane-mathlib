import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossedLemmaCanonicalLaneLean

structure CrossedModule where
  sourceGroup : Type u
  targetGroup : Type v
  sourceMul : sourceGroup → sourceGroup → sourceGroup
  targetMul : targetGroup → targetGroup → targetGroup
  sourceGroupProofs : Group sourceGroup
  targetGroupProofs : Group targetGroup
  action : targetGroup → sourceGroup → sourceGroup
  boundary : sourceGroup → targetGroup
  crossedModuleAxioms : Prop

structure CrossedModuleAdmittedObject where
  module : CrossedModule
  crossedLemmaHolds : Prop
  crossedLemmaTerm : crossedLemmaHolds

def CrossedModuleWitnessClosed (O : CrossedModuleAdmittedObject) : Prop :=
  O.crossedLemmaHolds

end TwoGroupsCrossedModulesCrossedLemmaCanonicalLaneLean
end HautevilleHouse