function powermethod(A, max_iter, tol)
  q_new = rand(size(A,1), 1)
  #q_new = [1/√3 1/√3 1/√3]
      for i in 1:max_iter
        q_old = q_new
        #matrix vector multiplication
        z = A*q_old
        #normalization
        q_new = z / norm(z)
        #check convergence, if converged stop and return z
        x = norm(q_new - q_old)
          if x < tol
            return q_new'*A*q_new
          end
      end
    error("Power Method not converged, increase max iterations")
end
