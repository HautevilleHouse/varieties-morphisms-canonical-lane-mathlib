import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VarietiesMorphismsCanonicalLaneLean.BaseChangeFlatness

namespace HautevilleHouse
namespace VarietiesMorphismsCanonicalLaneLean

structure GrauertSemicontinuityPackage {V : VarietyMorphismPackage}
    (B : BaseChangePackage V) where
  coherentDirectImage : Prop
  upperSemicontinuous : Prop
  fiberDimensionJumpLocusClosed : Prop
  grauertPerfection : Prop
  derivedImageComplex : Prop

def GrauertSemicontinuityClosed {V : VarietyMorphismPackage}
    {B : BaseChangePackage V} (G : GrauertSemicontinuityPackage B) : Prop :=
  G.coherentDirectImage ∧ G.upperSemicontinuous ∧ G.fiberDimensionJumpLocusClosed ∧
  G.grauertPerfection ∧ G.derivedImageComplex

structure GrauertSemicontinuityEvidence {V : VarietyMorphismPackage}
    {B : BaseChangePackage V} (G : GrauertSemicontinuityPackage B) where
  coherentDirectImageClosed : G.coherentDirectImage
  upperSemicontinuousClosed : G.upperSemicontinuous
  fiberDimensionJumpLocusClosedClosed : G.fiberDimensionJumpLocusClosed
  grauertPerfectionClosed : G.grauertPerfection
  derivedImageComplexClosed : G.derivedImageComplex

theorem grauert_semicontinuity_closed_from_evidence {V : VarietyMorphismPackage}
    {B : BaseChangePackage V} (G : GrauertSemicontinuityPackage B)
    (E : GrauertSemicontinuityEvidence G) : GrauertSemicontinuityClosed G := by
  exact And.intro E.coherentDirectImageClosed
    (And.intro E.upperSemicontinuousClosed
      (And.intro E.fiberDimensionJumpLocusClosedClosed
        (And.intro E.grauertPerfectionClosed E.derivedImageComplexClosed)))

end VarietiesMorphismsCanonicalLaneLean
end HautevilleHouse
