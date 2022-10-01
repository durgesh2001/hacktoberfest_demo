<script>
// javascript program to print largest
// contiguous array sum
function maxSubArraySum(a , size) {
		var max_so_far = Number.MIN_VALUE, max_ending_here = 0, start = 0, end = 0, s = 0;

		for (i = 0; i < size; i++) {
			max_ending_here += a[i];

			if (max_so_far < max_ending_here) {
				max_so_far = max_ending_here;
				start = s;
				end = i;
			}

			if (max_ending_here < 0) {
				max_ending_here = 0;
				s = i + 1;
			}
		}
		document.write("Maximum contiguous sum is " + max_so_far);
		document.write("<br/>Starting index " + start);
		document.write("<br/>Ending index " + end);
	}

	// Driver code
	
		var a = [ -2, -3, 4, -1, -2, 1, 5, -3 ];
		var n = a.length;
		maxSubArraySum(a, n);

// This code is contributed by Rajput-Ji
</script>
