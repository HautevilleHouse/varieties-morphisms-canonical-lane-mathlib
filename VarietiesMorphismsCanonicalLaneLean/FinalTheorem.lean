import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace VarietiesMorphismsCanonicalLaneLean

def ConstrainedVarietiesMorphismsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_varieties_morphisms_endgame (A : AdmissibleClass) :
    ConstrainedVarietiesMorphismsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end VarietiesMorphismsCanonicalLaneLean
end HautevilleHouse