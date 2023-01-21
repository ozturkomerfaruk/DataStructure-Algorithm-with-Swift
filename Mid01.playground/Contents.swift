import Cocoa

/*
 Have the function
 ArravChallenge (strArr) read the strArr parameter being passed which will represent a full day and will be filled with events that span from time X to time Y in the day. The format of each event will be hh:mmAM/PM-hh:mmAM/PM. For example, strArr may be [*10:00AM-
 12:30PM**02:00PM-02:45PM**09:10AM-
 09:50AM*]. Your program will have to output the longest amount of free time available between the start of your first event and the end of your last event in the format: hh:mm.
 The start event should be the earliest event in the day and the latest event should he the latest event in the day. The output for the previous input would therefore be 01:30 (with the earliest event in the day starting at
 09:10AM and the latest event ending at
 02:45PM. The input will contain at least 3 events and the events may be out of order.

 Input: ["12:15PM-02:00PM", "09: 00AM-
        10:00AM", "10:30AM-12:00PM"]
 Output: 00:30
 
 Input: ["12:15PM-02:00PM", "09:00AM-
        12:11PM", "02:02PM-04:00PM"]
 Output: 00:04
 */

///ChatGPT çözmüştür. :)

func ArravChallenge(_ strArr: [String]) -> String {
    
    // convert the input string to array of tuples (start time, end time)
    let events = strArr.map { event -> (time: Date, end: Date) in
        let parts = event.split(separator: "-")
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm a"
        return (time: formatter.date(from: String(parts[0]))!, end: formatter.date(from: String(parts[1]))!)
    }

    // sort the events by start time
    let sortedEvents = events.sorted { $0.time < $1.time }

    // find the maximum free time
    var maxFreeTime: TimeInterval = 0
    var currentFreeTime: TimeInterval = 0
    for i in 0..<sortedEvents.count-1 {
        currentFreeTime = sortedEvents[i+1].time.timeIntervalSince(sortedEvents[i].end)
        maxFreeTime = max(maxFreeTime, currentFreeTime)
    }

    // format the output
    let formatter = DateFormatter()
    formatter.dateFormat = "HH:mm"
    return formatter.string(from: Date(timeIntervalSinceReferenceDate: maxFreeTime))
}

var arr = ["12:15PM-02:00PM", "09: 00AM-10:00AM", "10:30AM-12:00PM"]

ArravChallenge(arr)
