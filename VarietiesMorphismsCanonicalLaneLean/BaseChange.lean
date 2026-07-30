import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VarietiesMorphismsCanonicalLaneLean.MorphismProperties

namespace HautevilleHouse
namespace VarietiesMorphismsCanonicalLaneLean

structure BaseChangePackage (V W : VarietyAdmittedObject) where
  baseChangeVariety : Type
  projectionMorphisms : Type
  baseChangeUniversalProperty : Prop
  baseChangePreservesProperties : Prop

structure BaseChangeEvidence (V W : VarietyAdmittedObject)
    (B : BaseChangePackage V W) where
  baseChangeUniversalPropertyClosed : B.baseChangeUniversalProperty
  baseChangePreservesPropertiesClosed : B.baseChangePreservesProperties

def BaseChangeClosed (V W : VarietyAdmittedObject) (B : BaseChangePackage V W) : Prop :=
  B.baseChangeUniversalProperty ∧ B.baseChangePreservesProperties

theorem base_change_closed_from_evidence (V W : VarietyAdmittedObject)
    (B : BaseChangePackage V W) (E : BaseChangeEvidence V W B) :
    BaseChangeClosed V W B := by
  exact And.intro E.baseChangeUniversalPropertyClosed
    E.baseChangePreservesPropertiesClosed

end VarietiesMorphismsCanonicalLaneLean
end HautevilleHouse