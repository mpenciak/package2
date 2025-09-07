pub type TypeTwo = Field;

pub trait TraitTwo {
    fn method_two(self) -> Field;
}

pub struct StructTwo {
    x : Field
}

impl TraitTwo for StructTwo {
    fn method_two(self) -> Field {
        self.x
    }
}

pub fn function_two(input: Field) -> StructTwo {
    StructTwo { x: input }
}

use transitive_package21::{StructTwoOne, function_two_one};
use transitive_package22::{StructTwoTwo, function_two_two};

pub fn construct_structs_and_return_random() -> Field {
    let s21 = function_two_one(1);
    let s22 = function_two_two(2);
    s21.x + s22.x
}