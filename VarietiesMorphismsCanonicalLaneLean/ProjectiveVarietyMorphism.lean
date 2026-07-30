import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesMorphismsCanonicalLaneLean

structure ProjectiveVarietyMorphism (A : AdmissibleClass) where
  sourceProjective : Type u
  targetProjective : Type v
  rationalMap : sourceProjective → targetProjective
  dominant : Prop
  pullbackRegular : Prop
  dominantClosed : dominant
  pullbackRegularClosed : pullbackRegular

def ProjectiveMorphismClosed (A : AdmissibleClass) (m : ProjectiveVarietyMorphism A) : Prop :=
  m.dominant ∧ m.pullbackRegular

theorem projective_morphism_closed_from_evidence (A : AdmissibleClass) (m : ProjectiveVarietyMorphism A) :
    ProjectiveMorphismClosed A m := by
  exact And.intro m.dominantClosed m.pullbackRegularClosed

end VarietiesMorphismsCanonicalLaneLean
end HautevilleHouse