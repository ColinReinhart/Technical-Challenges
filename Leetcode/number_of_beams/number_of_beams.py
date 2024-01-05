class Solution(object):
    def numberOfBeams(self, bank):
        """
        :type bank: List[str]
        :rtype: int
        """
        beam_count = 0
        walls_with_devices = []

        split = [list(map(int, row)) for row in bank]

        for r in split:
            if 1 in r:
                walls_with_devices.append(r)

        devices_per_wall = [sum(w) for w in walls_with_devices]

        if len(walls_with_devices) > 1:
            for i in range(len(devices_per_wall) - 1):
                beam_count += devices_per_wall[i] * devices_per_wall[i + 1]
        else:
            return 0

        return beam_count