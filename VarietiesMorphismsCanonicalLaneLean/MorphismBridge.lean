import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesMorphismsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.coveredByAffines

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end VarietiesMorphismsCanonicalLaneLean
end HautevilleHouse