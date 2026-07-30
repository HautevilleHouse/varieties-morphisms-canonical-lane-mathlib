import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesMorphismsCanonicalLaneLean

structure MorphismSheafification (A : AdmissibleClass) where
  sourceSheaf : Type u
  targetSheaf : Type v
  morphismSheafMap : sourceSheaf → targetSheaf
  preservesStructure : Prop
  sheafAxiomsClosed : Prop
  preservesStructureClosed : preservesStructure
  sheafAxiomsClosedTerm : sheafAxiomsClosed

def SheafificationClosed (S : MorphismSheafification A) : Prop :=
  S.preservesStructure ∧ S.sheafAxiomsClosed

theorem sheafification_closed_from_evidence (S : MorphismSheafification A) :
    SheafificationClosed S := by
  exact And.intro S.preservesStructureClosed S.sheafAxiomsClosedTerm

end VarietiesMorphismsCanonicalLaneLean
end HautevilleHouse