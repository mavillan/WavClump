@numba.jit('int64[:] (int64[:,:], float64[:,:,:])')
def peak_finder(clump_pixels, data):
    peak_pos = None
    peak_val = 0.
    #iterate over pixel positions (pp)
    for pp in clump_pixels:
        if peak[pp[0],pp[1],pp[2]]>peak_val: 
            peak_pos = pp
            peak_val = caa[pp]
    return peak_pos