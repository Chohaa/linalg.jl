# hw2 3.

    A = [325 309 634 250 0; -104 -96 -200 -70 8; -102 -98 -200 -84 -4; -20 -20 -40 -14 0; 34 34 76 44 16]
    X = qr(A)
    B = [985 756 345 189 -207; -1428 -1098 -508 -278 304; 1788 1392 652 348 -380; -1958 -1524 -698 -367 416; 540 420 192 105 -102]
    Y = qr(B)

# (a)
function QR_A(A, max_iter)
    A = [325 309 634 250 0; -104 -96 -200 -70 8; -102 -98 -200 -84 -4; -20 -20 -40 -14 0; 34 34 76 44 16]
        for i in 1:max_iter
            A_old = A
            X = qr(A)
            A = F.R * F.Q
        end
    return A
end

#output; 
#QR_A(A, 10)
#QR_A(A, 20)
#QR_A(A, 30)
#QR_A(A, 40)

#eigen(A)
#Eigen{Float64, Float64, Matrix{Float64}, Vector{Float64}}
#5-element Vector{Float64}:
# 1.0000000000078824
# 1.999999999993824
# 4.000000000000015
# 7.999999999999104
#15.999999999999403


# (b) eigenvalues found: 

# (c)
function QR_B(B, max_iter)
    B = [985 756 345 189 -207; -1428 -1098 -508 -278 304; 1788 1392 652 348 -380; -1958 -1524 -698 -367 416; 540 420 192 105 -102]
        for i in 1:max_iter
            B_old = B
            Y = qr(B)
            B = G.R * G.Q
        end
    return B
end

#output; 
#QR_B(B, 10)
#QR_B(B, 20)
#QR_B(B, 30)
#QR_B(B, 40)
#QR_B(B, 50)
#QR_B(B, 60)
#QR_B(B, 70)
#QR_B(B, 80)

#eigen(B)
#Eigen{Float64, Float64, Matrix{Float64}, Vector{Float64}}
#values:
#5-element Vector{Float64}:
# 11.999999999588553
# 12.999999999955385
# 13.999999999927686
# 15.000000000203501
# 16.000000000325723


# (d) Small eigenvalue seperation will have slow convergence

# hw2 2

A_g = -2*I(n) + gamma*diagm(ones(n-1,1),1) + (1/gamma)*diagm(ones(n-1,1),-1)

C = diagm([-2,-2,-2,-2,-2,-2,-2,-2]) + diagm(1 => [2,2,2,2,2,2,2], -1 => [1/2,1/2,1/2,1/2,1/2,1/2,1/2])

D = diagm([-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2]) + diagm(1 => [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2], -1 => [1/2,1/2,1/2,1/2,1/2,1/2,1/2,1/2,1/2,1/2,1/2,1/2,1/2,1/2,1/2])

E = diagm([-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2]) + diagm(1 => [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4], -1 => [1/4,1/4,1/4,1/4,1/4,1/4,1/4,1/4,1/4,1/4,1/4,1/4,1/4,1/4,1/4])

F = diagm([-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2]) + diagm(1 => [8,8,8,8,8,8,8,8,8,8,8,8,8,8,8], -1 => [1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8])

#(a) Real part of numerical rangw W(A_r): 

function W = numrange(A,M)
    theta = LinRange(0, pi, M)  
    theta = theta(1:M)
    L = zeros(length(theta),1)   # left support points  
    R = zeros(length(thera),1)   # right support points
        for k in 1:M
            Hk = (exp(1im*theta(k))*C + exp(-1im*theta(k))*C)/2;
            val, vec = eigen(Hk)
            lk = max(val)
        rk = min(val)
end
end

     #   uk = X(:
     #   vk =

     #   L(k) =
     #   R(k)

        

#(b) 

#(c)

#(d)

#(e)

# hw2. 4

H = diagm([1,2,3,4,5,6,7]) + diagm(1 => [1,1,1,1,1,1], -1 => [1,1,1,1,1,1])







