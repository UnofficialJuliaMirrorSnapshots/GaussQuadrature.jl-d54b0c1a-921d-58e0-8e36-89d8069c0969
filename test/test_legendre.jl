correct = ( pi/4 + atan(3.0) ) / 2
for endpt in [neither, both, left, right]
    x, w = legendre(40, endpt)
    Q = sum(w .* 1 ./ ( 1 .+ (2x .- 1).^2))
    @test Q ≈ correct
end
