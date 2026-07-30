import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesMorphismsCanonicalLaneLean

structure VarietySpace where
  carrier : Type
  topology : TopologicalSpace carrier
  structureSheaf : Type

structure VarietyAdmittedObject where
  space : VarietySpace
  quasiCompact : Prop
  coveredByAffines : Prop
  separated : Prop
  conclusion : coveredByAffines

structure VarietyEndgameState where
  object : VarietyAdmittedObject

def VarietyWitnessClosed (O : VarietyAdmittedObject) : Prop :=
  O.coveredByAffines

end VarietiesMorphismsCanonicalLaneLean
end HautevilleHouse