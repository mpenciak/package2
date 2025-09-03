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
