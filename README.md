# GDQuest

I'm trying to pick up Godot with Nathan's courses on [school.gdquest.com](https://school.gdquest.com).

## 2D Gamedev (01.2025)

- M1: I found the introduction inspiring.
- M3: The GDScript app (also available in German!) covered familiar ground for the most part, and could be skipped without problem for someone with a python background. Still, a few takeaways: `func _process(delta)`, `:=` type system, `Vector2` type
- M4: Making a spaceship move. It's confusing to grasp the interaction of the different Vector2: `direction * speed = velocity`. But also don't forget `delta`for time-dependent movement, `Input.get_axis()` to get the direction from the input but if its `.length()` is more than `1.0` it needs to be `.normalized()` as well.
- SG1: I read up on Vector Math next for better a understanding, according to the comments, other people feel the same. The math seems straight forward, but I needed to review the [Pythagorean Theorem](https://en.wikipedia.org/wiki/Pythagorean_theorem) and it took some thinking before I got a better grasp of `vector length` and what [normalization](SG1%20Vector%20Math/normalizing-vector.png) means here.
