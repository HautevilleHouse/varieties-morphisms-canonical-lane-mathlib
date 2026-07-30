import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesMorphismsCanonicalLaneLean

structure VarietyMorphismPackage where
  sourceVariety : Type u
  targetVariety : Type v
  underlyingMap : sourceVariety → targetVariety
  regularMap : Prop
  sourceIntegralClosed : Prop
  targetIntegralClosed : Prop
  mapSeparated : Prop
  mapProper : Prop
  fiberDimensionUpperSemicontinuous : Prop

def VarietyMorphismClosed (V : VarietyMorphismPackage) : Prop :=
  V.regularMap ∧ V.sourceIntegralClosed ∧ V.targetIntegralClosed ∧
  V.mapSeparated ∧ V.mapProper ∧ V.fiberDimensionUpperSemicontinuous

structure VarietyMorphismEvidence (V : VarietyMorphismPackage) where
  regularMapClosed : V.regularMap
  sourceIntegralClosedClosed : V.sourceIntegralClosed
  targetIntegralClosedClosed : V.targetIntegralClosed
  mapSeparatedClosed : V.mapSeparated
  mapProperClosed : V.mapProper
  fiberDimensionUpperSemicontinuousClosed : V.fiberDimensionUpperSemicontinuous

theorem variety_morphism_closed_from_evidence (V : VarietyMorphismPackage)
    (E : VarietyMorphismEvidence V) : VarietyMorphismClosed V := by
  exact And.intro E.regularMapClosed
    (And.intro E.sourceIntegralClosedClosed
      (And.intro E.targetIntegralClosedClosed
        (And.intro E.mapSeparatedClosed
          (And.intro E.mapProperClosed E.fiberDimensionUpperSemicontinuousClosed))))

end VarietiesMorphismsCanonicalLaneLean
end HautevilleHouse
