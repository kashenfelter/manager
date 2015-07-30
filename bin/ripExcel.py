import sys
from openpyxl import load_workbook
import cPickle as pickle
###########################
# this file is just used to pull information in certain formats to be used
##########################
args = sys.argv
fileName = args[1]

wb = load_workbook(filename = fileName, read_only=True, keep_vba = True, use_iterators=True)
ws = wb.get_sheet_by_name('PipelineView')
coordinateToValue = {} # {'E3':'CA'}
idToRow = {} # {'someOpptyID':21}
rowCount = 1
for row in ws.rows:
    idToRow[row[0].value.encode('ascii', 'ignore')] = rowCount
    for cell in row:
        if cell.value != None:
            coordinateToValue[cell.coordinate] = cell.value
    rowCount += 1

idToRow.pop('OpptyID')
pickle.dump(coordinateToValue, open('coordinateToValue', 'wb'))
pickle.dump(idToRow, open('idToRow', 'wb'))
