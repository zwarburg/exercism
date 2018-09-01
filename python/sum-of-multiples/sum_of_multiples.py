def sum_of_multiples(limit, multiples):
    results = set()
    for multiple in multiples:
        results = results.union(set(range(0, limit, multiple)))
    return sum(results)
