pub type TypeTwo = Field;

pub trait TraitTwo {
    fn method_two(self) -> Field;
}

pub struct StructTwo {
    x: Field,
}

impl TraitTwo for StructTwo {
    fn method_two(self) -> Field {
        self.x
    }
}

pub fn function_two(input: Field) -> StructTwo {
    StructTwo { x: input }
}

use transitive_package21::{function_two_one, StructTwoOne};

pub fn construct_structs_and_return_random() -> Field {
    let s21 = function_two_one(1);
    s21.x
}
