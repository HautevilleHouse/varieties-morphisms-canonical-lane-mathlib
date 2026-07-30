import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VarietiesMorphismsCanonicalLaneLean.VarietyObject

namespace HautevilleHouse
namespace VarietiesMorphismsCanonicalLaneLean

structure AffineCoveragePackage (V : VarietyAdmittedObject) where
  affineCover : Type
  coverMorphisms : Type
  eachOpenAffine : Prop
  coverRefines : Prop
  structureSheafIsSheaf : Prop

structure AffineCoverageEvidence (V : VarietyAdmittedObject) (C : AffineCoveragePackage V) where
  eachOpenAffineClosed : C.eachOpenAffine
  coverRefinesClosed : C.coverRefines
  structureSheafIsSheafClosed : C.structureSheafIsSheaf

def AffineCoverageClosed (V : VarietyAdmittedObject) (C : AffineCoveragePackage V) : Prop :=
  C.eachOpenAffine ∧ C.coverRefines ∧ C.structureSheafIsSheaf

theorem affine_coverage_closed_from_evidence (V : VarietyAdmittedObject)
    (C : AffineCoveragePackage V) (E : AffineCoverageEvidence V C) :
    AffineCoverageClosed V C := by
  exact And.intro E.eachOpenAffineClosed
    (And.intro E.coverRefinesClosed E.structureSheafIsSheafClosed)

end VarietiesMorphismsCanonicalLaneLean
end HautevilleHouse