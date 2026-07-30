import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesMorphismsCanonicalLaneLean

structure AffineVarietyMorphism (A : AdmissibleClass) where
  sourceVariety : Type u
  targetVariety : Type v
  underlyingMap : sourceVariety → targetVariety
  isPolynomialMap : Prop
  continuity : Prop
  isPolynomialMapClosed : isPolynomialMap
  continuityClosed : continuity

def AffineMorphismClosed (A : AdmissibleClass) (m : AffineVarietyMorphism A) : Prop :=
  m.isPolynomialMap ∧ m.continuity

theorem affine_morphism_closed_from_evidence (A : AdmissibleClass) (m : AffineVarietyMorphism A) :
    AffineMorphismClosed A m := by
  exact And.intro m.isPolynomialMapClosed m.continuityClosed

end VarietiesMorphismsCanonicalLaneLean
end HautevilleHouse