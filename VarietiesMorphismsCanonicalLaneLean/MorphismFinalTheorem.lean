import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesMorphismsCanonicalLaneLean

def ConstrainedVarietyMorphismClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_variety_morphism_endgame (A : AdmissibleClass) :
    ConstrainedVarietyMorphismClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end VarietiesMorphismsCanonicalLaneLean
end HautevilleHouse