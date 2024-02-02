
def convertToVector(meta):
    vec = []

    for entrySet in meta['metadataEntrySets']:
        for entry in entrySet['entries']:
            if entry['flag']:
                vec.append(1)
            else:
                vec.append(0)

    return vec

def convertJsonData(data):
    pers = []

    for item in data:
        pers.append(convertToVector(item['metadata']))

    return pers
